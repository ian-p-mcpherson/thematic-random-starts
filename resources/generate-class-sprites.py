#!/usr/bin/env python
# -*- coding: utf-8 -*-

#############################################################
#
#        Imports
#
#############################################################
from gimpfu import *
import csv
import os
from xml.etree import ElementTree
from shutil import copyfile
#import sys
#sys.stderr = open( 'C:\\Program Files\\GIMP 2\\log\\gimpstderr.txt', 'w') 
#sys.stdout = open( 'C:\\Program Files\\GIMP 2\\log\\gimpstdout.txt', 'w')


#############################################################
#
#        Globals and set up
#
#############################################################

# Defaults for easy command-line runs
default_image_path = "G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\resources\\player.xcf"
default_csv_path = "G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\resources\\"
default_csv_name = "changed_palettes.csv"
default_output_path = "G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\files\\"

# Debug mode
debug = True

# csv delimeters
column_delim = "|"
color_delim = ","

# List of all layers used by the sprite generator
layersToIndex = ['torso', 'right_thigh', 'right_hand', 'right_arm', 'left_thigh', 'left_hand', 'left_arm', 'head', 'player_arm', 'player']

# Base colors, technically thrown away at init
robe_light = gimpcolor.RGB(155, 111, 154)
robe_med = gimpcolor.RGB(127, 84, 118)
robe_dark = gimpcolor.RGB(89, 67, 84)
robe_belt = gimpcolor.RGB(209, 155, 61)
robe_lhand = gimpcolor.RGB(219, 192, 103)
robe_rhand = gimpcolor.RGB(240, 228, 155)

# Class colors, stores base colors at init
class_robe_light = gimpcolor.RGB(155, 111, 154)
class_robe_med = gimpcolor.RGB(127, 84, 118)
class_robe_dark = gimpcolor.RGB(89, 67,84)
class_robe_belt = gimpcolor.RGB(209, 155, 61)
class_robe_lhand = gimpcolor.RGB(219, 192, 103)
class_robe_rhand = gimpcolor.RGB(240, 228, 155)

# File data: [path, width, height]
torso_data = ['ragdoll\\', 12, 19]
right_thigh_data = ['ragdoll\\', 12, 19]
right_hand_data = ['ragdoll\\', 12, 19]
right_arm_data = ['ragdoll\\', 12, 19]
left_thigh_data = ['ragdoll\\', 12, 19]
left_hand_data = ['ragdoll\\', 12, 19]
left_arm_data = ['ragdoll\\', 12, 19]
head_data = ['ragdoll\\', 12, 19]
player_arm_data = ['', 5, 115]
player_data = ['', 420, 922]


#############################################################
#
#        Function Library
#
#############################################################

# Indexes all image layers for use during sprite generation
def setUp(image, debugMode):
    global debug
    debug = debugMode
    for layer in layersToIndex:
        foundLayer = findLayer(image, layer)
        if foundLayer is not None:
            globals()[layer] = foundLayer
            debugLogger("INFO: Indexed layer: %s" % layer)
        else:
            debugLogger("ERROR: Layer %s not found!" % layer)

# Finds a gimp xcf layer by name
def findLayer(layer_or_image, name):
    layers=[]
    result = findLayerRecursive(layer_or_image, name, layers)
    if len(result) > 0:
        return result[0]
    return None

# Recursive funtion to find layers by name in nested layer groups
def findLayerRecursive(layer_or_image, name, layers):
    for layer in layer_or_image.layers:
        if layer.name == name:
            layers.append(layer)
        elif hasattr(layer, 'layers'):
            layers = findLayerRecursive(layer, name, layers)
    return layers

# Gets the correct folder
def getFolder(image_output, class_name):
    folder = os.path.join(image_output, class_name)
    if not os.path.exists(folder):
        os.makedirs(folder)
    return folder

# Simple logger for debugging
def debugLogger(text):
    if debug:
        pdb.gimp_message(text)

# Resets all layers that have been toggled
def resetLayers():
    global layersToReset
    for layer in layersToReset:
        pdb.gimp_item_set_visible(layer, False)
    layersToReset = []

# Turns a layer on and adds it to layersToReset
def toggleOn(layer):
    pdb.gimp_item_set_visible(layer, True)
    layersToReset.append(layer)

# Basic clamp function because python doesn't have one I guess
def clamp(num, num_min, num_max):
    return max(num_min, min(num, num_max))

#############################################################
#
#        Main Script
#
#############################################################

def generateSpritesCmd(image, csv_location, csv_file, image_output, debugMode):
    global default_image_path
    global default_csv_path
    global default_csv_name
    global default_output_path

    # Set defaults for command line runs
    if image == "default":
        new_image = pdb.gimp_file_load(default_image_path, default_image_path)
    else:
        new_image = pdb.gimp_file_load(image, image)
    if csv_location == "default":
        new_csv_location = default_csv_path
    if csv_file == "default":
        new_csv_file = default_csv_name
    if image_output == "default":
        new_image_output = default_output_path
    if debugMode == "true":
        new_debugMode = True
    else:
        new_debugMode = False
    generateSprites(new_image, new_csv_location, new_csv_file, new_image_output, new_debugMode)

# Main entry point
def generateSprites(image, csv_location, csv_file, image_output, debugMode):
    setUp(image, debugMode)
    pdb.gimp_image_undo_group_start(image)
    global column_delim
    pdb.gimp_context_set_antialias(False)
    pdb.gimp_context_set_feather(False)
    pdb.gimp_context_set_sample_threshold_int(0)
    pdb.gimp_context_set_sample_merged(False)
    with open(csv_location + csv_file, 'rU') as f:
        reader = csv.reader(f, delimiter = column_delim)
        for row in reader:
            base_folder = getFolder(image_output, "%s\\" % row[0])
            set_class_colors(row)
            for layerName in layersToIndex:
                layer = globals()[layerName]
                layer_data = globals()["%s_data" % (layerName)]
                pdb.gimp_item_set_visible(layer, True)
                palette_swap(image, layer, row)
                folder = getFolder(base_folder, layer_data[0])
                output_filename = "%s.png" % (layerName)
                full_output_filename = os.path.join(folder, output_filename)
                pdb.file_png_save_defaults(image, layer, full_output_filename, full_output_filename)
                pdb.gimp_item_set_visible(layer, False)
    pdb.gimp_image_undo_group_end(image)

# Swaps colors as defined in the vars defined in set_class_colors
# This can be made generic, but for now I store robe colors separately (instead of a list or something)
def palette_swap(image, layer, data):
    # Setup globals
    global class_robe_light
    global class_robe_med
    global class_robe_dark
    global class_robe_belt
    global class_robe_lhand
    global class_robe_rhand
    # Swap the colors
    swap_color(image, layer, robe_light, class_robe_light)
    swap_color(image, layer, robe_med, class_robe_med)
    swap_color(image, layer, robe_dark, class_robe_dark)
    swap_color(image, layer, robe_belt, class_robe_belt)
    swap_color(image, layer, robe_lhand, class_robe_lhand)
    swap_color(image, layer, robe_rhand, class_robe_rhand)

# Sets global vars as defined in CSV data provided
def set_class_colors(data):
    # Setup globals
    global class_robe_light
    global class_robe_med
    global class_robe_dark
    global class_robe_belt
    global class_robe_lhand
    global class_robe_rhand
    global robe_light
    global robe_med
    global robe_dark
    global robe_belt
    global robe_lhand
    global robe_rhand
    global color_delim

    # Store current colors
    robe_light = class_robe_light
    robe_med = class_robe_med
    robe_dark = class_robe_dark
    robe_belt = class_robe_belt
    robe_lhand = class_robe_lhand
    robe_rhand = class_robe_rhand

    if len(data) > 3:
        # Get all 6 colors from CSV
        text_robe_light = data[1].replace(" ","").split(color_delim)
        text_robe_med = data[2].replace(" ","").split(color_delim)
        text_robe_dark = data[3].replace(" ","").split(color_delim)
        text_robe_belt = data[4].replace(" ","").split(color_delim)
        text_robe_lhand = data[5].replace(" ","").split(color_delim)
        text_robe_rhand = data[6].replace(" ","").split(color_delim)
    else:
        # Get 2 colors from CSV and shade remaining with code
        text_robe_light = data[1].replace(" ","").split(color_delim)
        text_robe_belt = data[2].replace(" ","").split(color_delim)
        text_robe_med = [str(int(float(text_robe_light[0])*0.8)), str(int(float(text_robe_light[1])*0.8)), str(int(float(text_robe_light[2])*0.8))]
        text_robe_dark = [str(int(float(text_robe_med[0])*0.8)), str(int(float(text_robe_med[1])*0.8)), str(int(float(text_robe_med[2])*0.8))]
        text_robe_lhand = [str(clamp(int(float(text_robe_belt[0])*1.15),0,255)), str(clamp(int(float(text_robe_belt[1])*1.15),0,255)), str(clamp(int(float(text_robe_belt[2])*1.15),0,255))]
        text_robe_rhand = [str(clamp(int(float(text_robe_belt[0])*1.3),0,255)), str(clamp(int(float(text_robe_belt[1])*1.3),0,255)), str(clamp(int(float(text_robe_belt[2])*1.3),0,255))]

    class_robe_light = gimpcolor.RGB(int(text_robe_light[0]), int(text_robe_light[1]), int(text_robe_light[2]))
    class_robe_med = gimpcolor.RGB(int(text_robe_med[0]), int(text_robe_med[1]), int(text_robe_med[2]))
    class_robe_dark = gimpcolor.RGB(int(text_robe_dark[0]), int(text_robe_dark[1]), int(text_robe_dark[2]))
    class_robe_belt = gimpcolor.RGB(int(text_robe_belt[0]), int(text_robe_belt[1]), int(text_robe_belt[2]))
    class_robe_lhand = gimpcolor.RGB(int(text_robe_lhand[0]), int(text_robe_lhand[1]), int(text_robe_lhand[2]))
    class_robe_rhand = gimpcolor.RGB(int(text_robe_rhand[0]), int(text_robe_rhand[1]), int(text_robe_rhand[2]))

    debugLogger("class_robe_light: (%s, %s, %s)" % (class_robe_light.r*255, class_robe_light.g*255, class_robe_light.b*255))
    debugLogger("class_robe_med: (%s, %s, %s)" % (class_robe_med.r*255, class_robe_med.g*255, class_robe_med.b*255))
    debugLogger("class_robe_dark: (%s, %s, %s)" % (class_robe_dark.r*255, class_robe_dark.g*255, class_robe_dark.b*255))
    debugLogger("class_robe_belt: (%s, %s, %s)" % (class_robe_belt.r*255, class_robe_belt.g*255, class_robe_belt.b*255))
    debugLogger("class_robe_lhand: (%s, %s, %s)" % (class_robe_lhand.r*255, class_robe_lhand.g*255, class_robe_lhand.b*255))
    debugLogger("class_robe_rhand: (%s, %s, %s)" % (class_robe_rhand.r*255, class_robe_rhand.g*255, class_robe_rhand.b*255))

# Snippet that does the selection and swapping on the layer provided
def swap_color(image, layer, color1, color2):
    debugLogger("swapping (%s, %s, %s) with (%s, %s, %s)" % (color1.r*255, color1.g*255, color1.b*255, color2.r*255, color2.g*255, color2.b*255))
    pdb.gimp_selection_none(image)
    pdb.gimp_image_select_color(image, 0, layer, color1)
    pdb.gimp_context_set_foreground(color2)
    pdb.gimp_edit_bucket_fill(layer,0,0,100,0,False,0,0)
    pdb.gimp_selection_none(image)


#############################################################
#
#        Gimp Script Registry
#
#############################################################
register(
    'generate-class-sprites',
    'Generate Class Sprites',
    'Generate class sprites',
    'Ian McPherson',
    'Ian McPherson',
    '2020',
    'Generate Class Sprites',
    '*',
    [
        (PF_IMAGE, 'image', 'Input image', None),
        (PF_STRING, 'csv_location', 'CSV location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\resources\\'),
        (PF_STRING, 'csv_file', 'CSV input:', 'test_palettes.csv'),
        (PF_STRING, 'image_output', 'Output location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\files\\'),
        (PF_BOOL, "debugMode", "Debug Mode", False),
    ],
    [],
    generateSprites,
    menu='<Image>/File/Noita'
)

register(
    'generate-class-sprites-cmd',
    'Generate Class Sprites CMD',
    'Generate class sprites cmd',
    'Ian McPherson',
    'Ian McPherson',
    '2020',
    'Generate Class Sprites CMD',
    '*',
    [
        (PF_STRING, 'image', 'Input image', "G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\resources\\player.xcf"),
        (PF_STRING, 'csv_location', 'CSV location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\resources\\'),
        (PF_STRING, 'csv_file', 'CSV input:', 'changed_palettes.csv'),
        (PF_STRING, 'image_output', 'Output location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\files\\'),
        (PF_STRING, "debugMode", "Debug Mode", "false"),
    ],
    [],
    generateSpritesCmd,
    menu='<Image>/File/Noita'
)

main()