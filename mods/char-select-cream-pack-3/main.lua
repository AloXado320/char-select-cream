-- name: [CS] [Bun] Cream (Pack 3)
-- description: Cream the Rabbit Costume Pack 3.\nCream Cosplay Vol 1.\n\n\\#ff7777\\This Pack requires Cream CS Mod\nto use as a Library!
-- category: cs

local TEXT_MOD_NAME = "Cream (Pack 3)"

-- Use the same number order as in Super Cream 64
E_MODEL_CREAM27 = smlua_model_util_get_id("cream_mario_geo") -- Located in "actors"
E_MODEL_CREAM28 = smlua_model_util_get_id("cream_daisy_geo") -- Located in "actors"
E_MODEL_CREAM29 = smlua_model_util_get_id("cream_klonoa_geo") -- Located in "actors"
E_MODEL_CREAM30 = smlua_model_util_get_id("cream_engie_geo") -- Located in "actors"
E_MODEL_CREAM31 = smlua_model_util_get_id("cream_ichiban_geo") -- Located in "actors"
E_MODEL_CREAM32 = smlua_model_util_get_id("cream_travis_geo") -- Located in "actors"
E_MODEL_CREAM33 = smlua_model_util_get_id("cream_jack_geo") -- Located in "actors"
E_MODEL_CREAM34 = smlua_model_util_get_id("cream_sfsakura_geo") -- Located in "actors"
E_MODEL_CREAM35 = smlua_model_util_get_id("cream_dudley_geo") -- Located in "actors"
E_MODEL_CREAM36 = smlua_model_util_get_id("cream_luke_geo") -- Located in "actors"
E_MODEL_CREAM37 = smlua_model_util_get_id("cream_roll_geo") -- Located in "actors"
E_MODEL_CREAM38 = smlua_model_util_get_id("cream_mmx_geo") -- Located in "actors"
E_MODEL_CREAM39 = smlua_model_util_get_id("cream_lan_geo") -- Located in "actors"
E_MODEL_CREAM40 = smlua_model_util_get_id("cream_vergil_geo") -- Located in "actors"
E_MODEL_CREAM41 = smlua_model_util_get_id("cream_terry_geo") -- Located in "actors"
E_MODEL_CREAM42 = smlua_model_util_get_id("cream_maria_geo") -- Located in "actors"
E_MODEL_CREAM43 = smlua_model_util_get_id("cream_richter_geo") -- Located in "actors"
E_MODEL_CREAM44 = smlua_model_util_get_id("cream_charlotte_geo") -- Located in "actors"
E_MODEL_CREAM45 = smlua_model_util_get_id("cream_goemon_geo") -- Located in "actors"
E_MODEL_CREAM46 = smlua_model_util_get_id("cream_mimi_geo") -- Located in "actors"
E_MODEL_CREAM47 = smlua_model_util_get_id("cream_ouendan_geo") -- Located in "actors"
E_MODEL_CREAM48 = smlua_model_util_get_id("cream_peppino_geo") -- Located in "actors"
E_MODEL_CREAM49 = smlua_model_util_get_id("cream_avgn_geo") -- Located in "actors"
E_MODEL_CREAM50 = smlua_model_util_get_id("cream_sora_geo") -- Located in "actors"
E_MODEL_CREAM51 = smlua_model_util_get_id("cream_kairi_geo") -- Located in "actors"
E_MODEL_CREAM52 = smlua_model_util_get_id("cream_parappa_geo") -- Located in "actors""

--E_MODEL_CREAM27_FLY = smlua_model_util_get_id("cream_mario_fly_geo") -- Located in "actors"
E_MODEL_CREAM28_FLY = smlua_model_util_get_id("cream_daisy_fly_geo") -- Located in "actors"
--E_MODEL_CREAM29_FLY = smlua_model_util_get_id("cream_klonoa_fly_geo") -- Located in "actors"
--E_MODEL_CREAM30_FLY = smlua_model_util_get_id("cream_engie_fly_geo") -- Located in "actors"
E_MODEL_CREAM31_FLY = smlua_model_util_get_id("cream_ichiban_fly_geo") -- Located in "actors"
E_MODEL_CREAM32_FLY = smlua_model_util_get_id("cream_travis_fly_geo") -- Located in "actors"
E_MODEL_CREAM33_FLY = smlua_model_util_get_id("cream_jack_fly_geo") -- Located in "actors"
E_MODEL_CREAM34_FLY = smlua_model_util_get_id("cream_sfsakura_fly_geo") -- Located in "actors"
E_MODEL_CREAM35_FLY = smlua_model_util_get_id("cream_dudley_fly_geo") -- Located in "actors"
E_MODEL_CREAM36_FLY = smlua_model_util_get_id("cream_luke_fly_geo") -- Located in "actors"
E_MODEL_CREAM37_FLY = smlua_model_util_get_id("cream_roll_fly_geo") -- Located in "actors"
--E_MODEL_CREAM38_FLY = smlua_model_util_get_id("cream_mmx_fly_geo") -- Located in "actors"
E_MODEL_CREAM39_FLY = smlua_model_util_get_id("cream_lan_fly_geo") -- Located in "actors"
E_MODEL_CREAM40_FLY = smlua_model_util_get_id("cream_vergil_fly_geo") -- Located in "actors"
--E_MODEL_CREAM41_FLY = smlua_model_util_get_id("cream_terry_fly_geo") -- Located in "actors"
E_MODEL_CREAM42_FLY = smlua_model_util_get_id("cream_maria_fly_geo") -- Located in "actors"
E_MODEL_CREAM43_FLY = smlua_model_util_get_id("cream_richter_fly_geo") -- Located in "actors"
E_MODEL_CREAM44_FLY = smlua_model_util_get_id("cream_charlotte_fly_geo") -- Located in "actors"
E_MODEL_CREAM45_FLY = smlua_model_util_get_id("cream_goemon_fly_geo") -- Located in "actors"
E_MODEL_CREAM46_FLY = smlua_model_util_get_id("cream_mimi_fly_geo") -- Located in "actors"
E_MODEL_CREAM47_FLY = smlua_model_util_get_id("cream_ouendan_fly_geo") -- Located in "actors"
E_MODEL_CREAM48_FLY = smlua_model_util_get_id("cream_peppino_fly_geo") -- Located in "actors"
E_MODEL_CREAM49_FLY = smlua_model_util_get_id("cream_avgn_fly_geo") -- Located in "actors"
E_MODEL_CREAM50_FLY = smlua_model_util_get_id("cream_sora_fly_geo") -- Located in "actors"
E_MODEL_CREAM51_FLY = smlua_model_util_get_id("cream_kairi_fly_geo") -- Located in "actors"
--E_MODEL_CREAM52_FLY = smlua_model_util_get_id("cream_parappa_fly_geo") -- Located in "actors""

if not _G.CreamBunCsExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Cream CS Mod\nto use as a Library!\n\nPlease turn on the Cream CS Mod\nand Restart the Room!", 6)
    return 0
end

local creamcs_get_character = _G.CreamBunCsApi.creamcs_get_character
local creamcs_get_life_icon = _G.CreamBunCsApi.creamcs_get_life_icon

local newCostumes = {
    {name = "Super Mario", model = E_MODEL_CREAM27, flyModel = nil},
    {name = "Princess Daisy", model = E_MODEL_CREAM28, flyModel = E_MODEL_CREAM28_FLY},
    {name = "Klonoa (Wahoo)", model = E_MODEL_CREAM29, flyModel = nil},
    {name = "Engineer", model = E_MODEL_CREAM30, flyModel = nil},
    {name = "Ichiban Kasuga", model = E_MODEL_CREAM31, flyModel = E_MODEL_CREAM31_FLY},
    {name = "Travis Touchdown", model = E_MODEL_CREAM32, flyModel = E_MODEL_CREAM32_FLY},
    {name = "Jack Garland", model = E_MODEL_CREAM33, flyModel = E_MODEL_CREAM33_FLY},
    {name = "Sakura Kasugano", model = E_MODEL_CREAM34, flyModel = E_MODEL_CREAM34_FLY},
    {name = "Dudley", model = E_MODEL_CREAM35, flyModel = E_MODEL_CREAM35_FLY},
    {name = "Luke Sullivan (From Streets)", model = E_MODEL_CREAM36, flyModel = E_MODEL_CREAM36_FLY},
    {name = "Roll", model = E_MODEL_CREAM37, flyModel = E_MODEL_CREAM37_FLY},
    {name = "Megaman X", model = E_MODEL_CREAM38, flyModel = nil},
    {name = "Lan Hikari", model = E_MODEL_CREAM39, flyModel = E_MODEL_CREAM39_FLY},
    {name = "Vergil", model = E_MODEL_CREAM40, flyModel = E_MODEL_CREAM40_FLY},
    {name = "Terry Bogard", model = E_MODEL_CREAM41, flyModel = nil},
    {name = "Maria Renard", model = E_MODEL_CREAM42, flyModel = E_MODEL_CREAM42_FLY},
    {name = "Richter Belmont", model = E_MODEL_CREAM43, flyModel = E_MODEL_CREAM43_FLY},
    {name = "Charlotte Aulin", model = E_MODEL_CREAM44, flyModel = E_MODEL_CREAM44_FLY},
    {name = "Goemon", model = E_MODEL_CREAM45, flyModel = E_MODEL_CREAM45_FLY},
    {name = "Mimi", model = E_MODEL_CREAM46, flyModel = E_MODEL_CREAM46_FLY},
    {name = "Ryuta Ippongi", model = E_MODEL_CREAM47, flyModel = E_MODEL_CREAM47_FLY},
    {name = "Peppino Spaghetti", model = E_MODEL_CREAM48, flyModel = E_MODEL_CREAM48_FLY},
    {name = "Angry Videogame Nerd", model = E_MODEL_CREAM49, flyModel = E_MODEL_CREAM49_FLY},
    {name = "Sora", model = E_MODEL_CREAM50, flyModel = E_MODEL_CREAM50_FLY},
    {name = "Kairi", model = E_MODEL_CREAM51, flyModel = E_MODEL_CREAM51_FLY},
    {name = "Parappa", model = E_MODEL_CREAM52, flyModel = nil},
}

CT_CREAM_PACK3 = _G.charSelect.character_add("Cream Cosplay Vol 1", {"She a bnuuy, She go hop!", "", "Pack 3 for Cream the Rabbit,", "she's ready to go make some new friends!", "", "HUD Sprites made by SketchMeister","New voice clips by MagaicalPoptarts"}, "Gamebun", {r = 248, g = 224, b = 184}, E_MODEL_CREAM27, creamcs_get_character(), creamcs_get_life_icon())

_G.CreamBunCsApi.creamcs_add_health_meter(CT_CREAM_PACK3)

_G.CreamBunCsApi.creamcs_add_char(CT_CREAM_PACK3)

for _, costume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_model(costume.model, costume.flyModel)
end

for _, newCostume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_costume(CT_CREAM_PACK3, newCostume)
end
