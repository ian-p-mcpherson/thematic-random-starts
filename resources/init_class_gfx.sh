#!/bin/bash
cd "$(dirname "$0")"

declare -a ClassNames=("slime" "construction" "telekinetic" "vampire" "bloodcultist" "ninja" "laser" "exploder" "blasto" "gambler" "telekarate" "berzerker" "eldritch" "planar" "seer" "alchemist" "pyro" "arsonist" "ratmancer" "summoner" "flylord" "magnet" "airsage" "geomancer" "adventurer" "lightning" "cryomancer" "possessed" "tinker" "thrifty" "storm" "tide" )
TemplateClassName="template"

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