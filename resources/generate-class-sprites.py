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

# Debug mode
debug = True

# List of all layers used by the sprite generator
layersToIndex = ['torso', 'right_thigh', 'right_hand', 'right_arm', 'left_thigh', 'left_hand', 'left_arm', 'head', 'player_arm', 'player']

# Base colors, technically thrown away at init
robe_light = gimpcolor.RGB(155, 111, 154)
robe_med = gimpcolor.RGB(127, 84, 118)
robe_dark = gimpcolor.RGB(89, 67,84)
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
torso_data = ['ragdolls\\', 12, 19]
right_thigh_data = ['ragdolls\\', 12, 19]
right_hand_data = ['ragdolls\\', 12, 19]
right_arm_data = ['ragdolls\\', 12, 19]
left_thigh_data = ['ragdolls\\', 12, 19]
left_hand_data = ['ragdolls\\', 12, 19]
left_arm_data = ['ragdolls\\', 12, 19]
head_data = ['ragdolls\\', 12, 19]
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

# Recursive fintion to find layers by name in nested layer groups
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

# Main entry point
def generateSprites(image, csv_location, csv_file, image_output, debugMode):
    setUp(image, debugMode)
    pdb.gimp_image_undo_group_start(image)
    # The following lines aren't needed if 'player.xcf' is used
    #pdb.gimp_context_set_antialias(False)
    #pdb.gimp_context_set_feather(False)
    #pdb.gimp_context_set_sample_threshold(3)
    #pdb.gimp_context_set_sample_merged(False)
    with open(csv_location + csv_file, 'r') as f:
        reader = csv.reader(f, delimiter=',')
        for row in reader:
            base_folder = getFolder(image_output, "%s\\" % row[0])
            set_class_colors(row)
            for layerName in layersToIndex:
                layer = globals()[layerName]
                layer_data = globals()["%s_data" % (layerName)]
                pdb.gimp_item_set_visible(layer, True)
                palette_swap(image, layer, row)
                debugLogger("image width: %s, image height: %s" % (layer_data[1], layer_data[2]))
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

    # Store current colors
    robe_light = class_robe_light
    robe_med = class_robe_med
    robe_dark = class_robe_dark
    robe_belt = class_robe_belt
    robe_lhand = class_robe_lhand
    robe_rhand = class_robe_rhand

    if len(data) > 3:
        # Get all 6 colors from CSV
        text_robe_light = data[1].split("|")
        text_robe_med = data[2].split("|")
        text_robe_dark = data[3].split("|")
        text_robe_belt = data[4].split("|")
        text_robe_lhand = data[5].split("|")
        text_robe_rhand = data[6].split("|")
    else:
        # Get 2 colors from CSV and shade remaining with code
        text_robe_med = data[1].split("|")
        text_robe_belt = data[2].split("|")
        text_robe_dark = [str(clamp(int(text_robe_med[0])-38,0,255)), str(clamp(int(text_robe_med[1])-27,0,255)), str(clamp(int(text_robe_med[2])-44,0,255))]
        text_robe_light = [str(clamp(int(text_robe_med[0])+28,0,255)), str(clamp(int(text_robe_med[1])+37,0,255)), str(clamp(int(text_robe_med[2])+36,0,255))]
        text_robe_lhand = [str(clamp(int(text_robe_belt[0])+10,0,255)), str(clamp(int(text_robe_belt[1])+37,0,255)), str(clamp(int(text_robe_belt[2])+42,0,255))]
        text_robe_rhand = [str(clamp(int(text_robe_belt[0])+31,0,255)), str(clamp(int(text_robe_belt[1])+73,0,255)), str(clamp(int(text_robe_belt[2])+94,0,255))]

    class_robe_light = gimpcolor.RGB(int(text_robe_light[0]), int(text_robe_light[1]), int(text_robe_light[2]))
    class_robe_med = gimpcolor.RGB(int(text_robe_med[0]), int(text_robe_med[1]), int(text_robe_med[2]))
    class_robe_dark = gimpcolor.RGB(int(text_robe_dark[0]), int(text_robe_dark[1]), int(text_robe_dark[2]))
    class_robe_belt = gimpcolor.RGB(int(text_robe_belt[0]), int(text_robe_belt[1]), int(text_robe_belt[2]))
    class_robe_lhand = gimpcolor.RGB(int(text_robe_lhand[0]), int(text_robe_lhand[1]), int(text_robe_lhand[2]))
    class_robe_rhand = gimpcolor.RGB(int(text_robe_rhand[0]), int(text_robe_rhand[1]), int(text_robe_rhand[2])) 

# Snippet that does the selection and swapping on the layer provided
def swap_color(image, layer, color1, color2):
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
        (PF_STRING, 'csv_file', 'CSV input:', 'palettes.csv'),
        (PF_STRING, 'image_output', 'Output location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\files\\'),
        (PF_BOOL, "debugMode", "Debug Mode", True),
    ],
    [],
    generateSprites,
    menu='<Image>/File/Noita'
)

main()