#!/usr/bin/env python
# -*- coding: utf-8 -*-

#############################################################
#
#        Imports
#
#############################################################
from gimpfu import *
#import gimpcolor
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
layersToIndex = ['torso', 'right_thigh', 'right_hand', 'right_arm', 'left_thigh', 'left_hand', 'left_arm', 'head', 'player_arm', 'player'] #, 'player_uv_src']

# Tracks all layers toggled on during sprite generation
layersToReset = []

# Base colors
robe_light = gimpcolor.RGB(60, 43, 60)
robe_med = gimpcolor.RGB(49, 33, 36)
robe_dark = gimpcolor.RGB(35, 26,33)
robe_belt = gimpcolor.RGB(82, 61, 24)
robe_hands = gimpcolor.RGB(86, 76, 40)

# Class colors
class_robe_light = gimpcolor.RGB(60, 43, 60)
class_robe_med = gimpcolor.RGB(49, 33, 36)
class_robe_dark = gimpcolor.RGB(35, 26,33)
class_robe_belt = gimpcolor.RGB(82, 61, 24)
class_robe_hands = gimpcolor.RGB(86, 76, 40)

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
            return
            debugLogger("INFO: Indexed layer: %s" % layer)
        else:
            return
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
def getFolder(image_output, currentDeck):
    folder = os.path.join(image_output, currentDeck)
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

#############################################################
#
#        Main Script
#
#############################################################

# Main entry point
def generateSprites(image, csv_location, csv_file, image_output, debugMode):
    setUp(image, debugMode)
    pdb.gimp_image_undo_group_start(image)
    pdb.gimp_context_set_antialias(False)
    pdb.gimp_context_set_feather(False)
    pdb.gimp_context_set_sample_threshold(3)
    pdb.gimp_context_set_sample_merged(False)
    with open(csv_location + csv_file, 'r') as f:
        reader = csv.reader(f, delimiter=',')
        for row in reader:
            set_class_colors(image, row)
            for layer in layersToIndex:
                palette_swap(image, row, layer)
    #        #copy = pdb.gimp_image_duplicate(image)
    #        # pdb.gimp_image_resize(image,image.width+2*marginX,image.height+2*marginY,marginX,marginY)
    #        #merged = pdb.gimp_image_merge_visible_layers(copy, 0)
    #        #output_filename = "%s.png" % (row[0])
    #        #full_output_filename = os.path.join(folder, output_filename)
    #        #pdb.file_png_save_defaults(copy, merged, full_output_filename, full_output_filename)
    #        #pdb.gimp_image_delete(copy)
    #        #resetLayers()
    pdb.gimp_image_undo_group_end(image)

def set_class_colors(image, row):
    text_robe_light = row[1].split("|")
    text_robe_med = row[2].split("|")
    text_robe_dark = row[3].split("|")
    text_robe_belt = row[4].split("|")
    text_robe_hands = row[5].split("|")
    class_robe_light = gimpcolor.RGB(int(text_robe_light[0]), int(text_robe_light[1]), int(text_robe_light[2]))
    class_robe_med = gimpcolor.RGB(int(text_robe_med[0]), int(text_robe_med[1]), int(text_robe_med[2]))
    class_robe_dark = gimpcolor.RGB(int(text_robe_dark[0]), int(text_robe_dark[1]), int(text_robe_dark[2]))
    class_robe_belt = gimpcolor.RGB(int(text_robe_belt[0]), int(text_robe_belt[1]), int(text_robe_belt[2]))
    class_robe_hands = gimpcolor.RGB(int(text_robe_hands[0]), int(text_robe_hands[1]), int(text_robe_hands[2]))

def palette_swap(image, row, layer):
    debugLogger("swapping layer %s on class %s" % (layer, row[0]))
    pdb.gimp_by_color_select(image, 0, globals()[layer], robe_light)
#    # pdb.gimp_context_set_foreground(sel_color)
#    # pdb.gimp_edit_bucket_fill(layer,FG_BUCKET_FILL,COLOR_ERASE_MODE,100.,0.,0,0.,0.)
#    # 


#############################################################
#
#        Gimp Script Registry
#
#############################################################
register(
    'generate-class_sprites',
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
        (PF_STRING, 'image_output', 'Output location:', 'G:\\Steam\\steamapps\\common\\Noita\\mods\\thematic_random_starts\\output\\'),
        (PF_BOOL, "debugMode", "Debug Mode", True),
    ],
    [],
    generateSprites,
    menu='<Image>/File/Noita'
)

main()