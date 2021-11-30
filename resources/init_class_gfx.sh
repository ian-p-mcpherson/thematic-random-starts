#!/bin/bash
cd "$(dirname "$0")"

GimpPath="/c/Program Files/GIMP 2/bin"
export PATH="$PATH:$GimpPath"

declare -a ClassNames=()
declare -a ClassRobes=()
declare -a ClassBelts=()

TemplateClassName="template"

###############################################
# Section for gathering data from loadouts.lua
###############################################
IFS=$'\n'
for line in $(grep "class_color = " "../files/loadouts.lua");
do 
   ClassNames+=($(echo $line | cut -d \" -f2))
done
for line in $(grep "robe_color = " "../files/loadouts.lua");
do 
   ClassRobes+=($(echo $line | cut -d "{" -f2 | cut -d "}" -f1))
done
for line in $(grep "belt_color = " "../files/loadouts.lua");
do 
   ClassBelts+=($(echo $line | cut -d "{" -f2 | cut -d "}" -f1))
done
unset IFS


###############################################
# Section for generating sprite dirs and UVs
###############################################
RootDir="../files/"
UVDir="../data/generated/sprite_uv_maps/"
UVFilenamePrefix="mods.thematic_random_starts.files."
UVFilenameSuffix=".player.png"

for ClassName in ${ClassNames[@]}; do
	echo "Building $ClassName class data..."
	ClassDir="$RootDir$ClassName"
	TemplateDir="$RootDir$TemplateClassName"
	cp -RT $TemplateDir $ClassDir
	grep -rl template $ClassDir | xargs sed -i "s/template/$ClassName/g"
	cp "$UVDir$UVFilenamePrefix$TemplateClassName$UVFilenameSuffix" "$UVDir$UVFilenamePrefix$ClassName$UVFilenameSuffix"
done


###############################################
# Section for generating sprite files with GIMP
###############################################
WorkingPalettes=""
ChangedPalettes=""

# Populate palettes defined in loadouts.lua
for i in "${!ClassNames[@]}"; do 
  printf -v WorkingPalettes "%s%s|%s|%s\r\n" "$WorkingPalettes" "${ClassNames[$i]}" "${ClassRobes[$i]}" "${ClassBelts[$i]}"
done
printf "%s" "$WorkingPalettes" > working_palettes.csv

# Find which palettes changed since last update
printf -v ChangedPalettes "%s" $(diff --changed-group-format="%<" --unchanged-group-format="" working_palettes.csv palettes.csv)
printf "%s" "$ChangedPalettes" > changed_palettes.csv

# If changed palettes exist
ChangedLines=$(echo -n "$ChangedPalettes" | grep -c '^')
if [ "$ChangedLines" != "0" ]
then
	printf "Changed palettes found, generating...\n"
	# Call GIMP and genereate chaned palettes
	gimp-2.10.exe -n -idf --batch "(python-fu-generate-class-sprites-cmd RUN-NONINTERACTIVE \"default\" \"default\" \"default\" \"default\" \"default\")" --batch "(gimp-quit 1)"

	# Current palettes and working palettes are now in sync
	cp working_palettes.csv palettes.csv
else
	printf "No palette changes found, closing...\n"
fi 
