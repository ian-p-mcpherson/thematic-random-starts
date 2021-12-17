dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_bool_custom( mod_id, gui, in_main_menu, im_id, setting )
    local value = ModSettingGetNextValue( mod_setting_get_id(mod_id,setting) )
    local text = setting.ui_name .. " - " .. GameTextGet( value and "$option_on" or "$option_off" )

    if GuiButton( gui, im_id, mod_setting_group_x_offset, 0, text ) then
        ModSettingSetNextValue( mod_setting_get_id(mod_id,setting), not value, false )
    end

    mod_setting_tooltip( mod_id, gui, in_main_menu, setting )
end

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
    print( tostring(new_value) )
end

local mod_id = "thematic_random_starts"
mod_settings_version = 1 
mod_settings = 
{
    {
        id = "enable_random",
        ui_name = "Random Loadouts",
        ui_description = "Randomly choose a loadout for me when the game begins.",
        value_default = true,
        scope = MOD_SETTING_SCOPE_NEW_GAME,
    },
    {
        id = "loadout_override",
        ui_name = "Loadout Choice",
        ui_description = "Start with this loadout ID if Random Loadouts is turned off (IDs displayed below)",
        value_default = 1,
        value_min = 1,
        value_max = 50,
        value_display_formatting = " ID $0",
        scope = MOD_SETTING_SCOPE_NEW_GAME,
    },
    {
        category_id = "random_loadouts",
        ui_name = "Random Loadouts",
        ui_description = "Enable or disable specific loadouts when Random Loadouts is turned on.",
        foldable = true,
        _folded = true,
        settings = {
            {
                id = "id_1",
                ui_name = " 1 - Slime Sorcerer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_2",
                ui_name = " 2 - Construction Conjurer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_3",
                ui_name = " 3 - Telekinetic",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_4",
                ui_name = " 4 - Vampire",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_5",
                ui_name = " 5 - Blood Cultist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_6",
                ui_name = " 6 - Ninja",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_7",
                ui_name = " 7 - Laser Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_8",
                ui_name = " 8 - Demolitionist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_9",
                ui_name = " 9 - Blastomancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_10",
                ui_name = "10 - Gambler",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_11",
                ui_name = "11 - Tele-Karate Master",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_12",
                ui_name = "12 - Berserker",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_13",
                ui_name = "13 - Eldritch Cultist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_14",
                ui_name = "14 - Planar Cultist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_15",
                ui_name = "15 - Crystal Seer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_16",
                ui_name = "16 - Alchemist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_17",
                ui_name = "17 - Pyromancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_18",
                ui_name = "18 - Arsonist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_19",
                ui_name = "19 - Ratmancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_20",
                ui_name = "20 - Summoner",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_21",
                ui_name = "21 - Lord of the Flies",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_22",
                ui_name = "22 - Magnetmancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_23",
                ui_name = "23 - Air Sage",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_24",
                ui_name = "24 - Geomancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_25",
                ui_name = "25 - Adventurer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_26",
                ui_name = "26 - Lightning Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_27",
                ui_name = "27 - Cryomancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_28",
                ui_name = "28 - Exorcist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_29",
                ui_name = "29 - Wand Tinkerer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_30",
                ui_name = "30 - Thrifty Shopper",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_31",
                ui_name = "31 - Tidal Sorcerer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_32",
                ui_name = "32 - Lukki Initiate",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_33",
                ui_name = "33 - Platformer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_34",
                ui_name = "34 - Necromancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_35",
                ui_name = "35 - Hunter",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_36",
                ui_name = "36 - Sniper",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_37",
                ui_name = "37 - Toxic Shaman",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_38",
                ui_name = "38 - Metal Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_39",
                ui_name = "39 - Mushroomancer",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_40",
                ui_name = "40 - Homunculist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_41",
                ui_name = "41 - Weather Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_42",
                ui_name = "42 - Big Spender",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_43",
                ui_name = "43 - Worm Cultist",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_44",
                ui_name = "44 - Wand Enthusiast",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_45",
                ui_name = "45 - Space Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_46",
                ui_name = "46 - Warp Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_47",
                ui_name = "47 - Luck Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_48",
                ui_name = "48 - Beam Wizard",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_49",
                ui_name = "49 - Lukki Breeder",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "id_50",
                ui_name = "50 - Time Traveler",
                value_default = true,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
        },
    },
    {
        category_id = "advanced",
        ui_name = "Advanced",
        ui_description = "Special options.",
        foldable = true,
        _folded = true,
        settings = {
            {
                id = "enable",
                ui_name = "Passive Mode",
                ui_description = "Used to turn the mod off but keep it loaded for other mods to use.",
                value_default = false,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
            {
                id = "robes_only_mode",
                ui_name = "Robes Only Mode",
                ui_description = "Use the vanilla loadout, but still randomize robes from available loadouts.",
                value_default = false,
                scope = MOD_SETTING_SCOPE_NEW_GAME,
            },
        },
    },
}

function ModSettingsUpdate( init_scope )
    local old_version = mod_settings_get_version( mod_id )
    mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
    return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
    mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end
