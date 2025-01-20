-- name: [CS] [Bun] Cream (Pack 2)
-- description: Cream the Rabbit Costume Pack 2.\nCream and Friends.\n\n\\#ff7777\\This Pack requires Cream CS Mod\nto use as a Library!
-- category: cs

local TEXT_MOD_NAME = "Cream (Pack 2)"

-- Use the same number order as in Super Cream 64
E_MODEL_CREAM14 = smlua_model_util_get_id("cream_vanilla_geo") -- Located in "actors"
E_MODEL_CREAM15 = smlua_model_util_get_id("cream_amy_geo") -- Located in "actors"
E_MODEL_CREAM16 = smlua_model_util_get_id("cream_blaze_geo") -- Located in "actors"
E_MODEL_CREAM17 = smlua_model_util_get_id("cream_marine_geo") -- Located in "actors"
E_MODEL_CREAM18 = smlua_model_util_get_id("cream_shadow_geo") -- Located in "actors"
E_MODEL_CREAM19 = smlua_model_util_get_id("cream_silver_geo") -- Located in "actors"
E_MODEL_CREAM20 = smlua_model_util_get_id("cream_tails_geo") -- Located in "actors"
E_MODEL_CREAM21 = smlua_model_util_get_id("cream_charmy_geo") -- Located in "actors"
E_MODEL_CREAM22 = smlua_model_util_get_id("cream_tikal_geo") -- Located in "actors"
E_MODEL_CREAM23 = smlua_model_util_get_id("cream_cosmo_geo") -- Located in "actors"
E_MODEL_CREAM24 = smlua_model_util_get_id("cream_eggman_geo") -- Located in "actors"
E_MODEL_CREAM25 = smlua_model_util_get_id("cream_cheese_geo") -- Located in "actors"
E_MODEL_CREAM26 = smlua_model_util_get_id("cream_nights_geo") -- Located in "actors"

E_MODEL_CREAM14_FLY = smlua_model_util_get_id("cream_vanilla_fly_geo") -- Located in "actors"
E_MODEL_CREAM15_FLY = smlua_model_util_get_id("cream_amy_fly_geo") -- Located in "actors"
E_MODEL_CREAM16_FLY = smlua_model_util_get_id("cream_blaze_fly_geo") -- Located in "actors"
E_MODEL_CREAM17_FLY = smlua_model_util_get_id("cream_marine_fly_geo") -- Located in "actors"
--E_MODEL_CREAM18_FLY = smlua_model_util_get_id("cream_shadow_fly_geo") -- Located in "actors"
E_MODEL_CREAM19_FLY = smlua_model_util_get_id("cream_silver_fly_geo") -- Located in "actors"
--E_MODEL_CREAM20_FLY = smlua_model_util_get_id("cream_tails_fly_geo") -- Located in "actors"
--E_MODEL_CREAM21_FLY = smlua_model_util_get_id("cream_charmy_fly_geo") -- Located in "actors"
E_MODEL_CREAM22_FLY = smlua_model_util_get_id("cream_tikal_fly_geo") -- Located in "actors"
E_MODEL_CREAM23_FLY = smlua_model_util_get_id("cream_cosmo_fly_geo") -- Located in "actors"
E_MODEL_CREAM24_FLY = smlua_model_util_get_id("cream_eggman_fly_geo") -- Located in "actors"
--E_MODEL_CREAM25_FLY = smlua_model_util_get_id("cream_cheese_fly_geo") -- Located in "actors"
E_MODEL_CREAM26_FLY = smlua_model_util_get_id("cream_nights_fly_geo") -- Located in "actors"

if not _G.CreamBunCsExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Cream CS Mod\nto use as a Library!\n\nPlease turn on the Cream CS Mod\nand Restart the Room!", 6)
    return 0
end

local creamcs_get_character = _G.CreamBunCsApi.creamcs_get_character
local creamcs_get_life_icon = _G.CreamBunCsApi.creamcs_get_life_icon

local newCostumes = {
    {name = "Young Vanilla", model = E_MODEL_CREAM14, flyModel = E_MODEL_CREAM14_FLY},
    {name = "Amy Rose", model = E_MODEL_CREAM15, flyModel = E_MODEL_CREAM15_FLY},
    {name = "Blaze the Cat", model = E_MODEL_CREAM16, flyModel = E_MODEL_CREAM16_FLY},
    {name = "Marine the Raccoon", model = E_MODEL_CREAM17, flyModel = E_MODEL_CREAM17_FLY},
    {name = "Shadow the Hedgehog", model = E_MODEL_CREAM18, flyModel = nil},
    {name = "Silver the Hedgehog", model = E_MODEL_CREAM19, flyModel = E_MODEL_CREAM19_FLY},
    {name = "Miles 'Tails' Prowder", model = E_MODEL_CREAM20, flyModel = nil},
    {name = "Charmy Bee", model = E_MODEL_CREAM21, flyModel = nil},
    {name = "Tikal the Echidna", model = E_MODEL_CREAM22, flyModel = E_MODEL_CREAM22_FLY},
    {name = "Cosmo the Seedrian", model = E_MODEL_CREAM23, flyModel = E_MODEL_CREAM23_FLY},
    {name = "Dr. Eggman", model = E_MODEL_CREAM24, flyModel = E_MODEL_CREAM24_FLY},
    {name = "Cheese (Chao Chao!)", model = E_MODEL_CREAM25, flyModel = nil},
    {name = "NiGHTS", model = E_MODEL_CREAM26, flyModel = E_MODEL_CREAM26_FLY},
}

CT_CREAM_PACK2 = _G.charSelect.character_add("Cream and Friends", {"She a bnuuy, She go hop!", "", "Pack 2 for Cream the Rabbit,", "she's ready to go make some new friends!", "", "HUD Sprites made by SketchMeister","New voice clips by MagaicalPoptarts"}, "Gamebun", {r = 248, g = 224, b = 184}, E_MODEL_CREAM14, creamcs_get_character(), creamcs_get_life_icon())

_G.CreamBunCsApi.creamcs_add_health_meter(CT_CREAM_PACK2)

_G.CreamBunCsApi.creamcs_add_char(CT_CREAM_PACK2)

for _, costume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_model(costume.model, costume.flyModel)
end

for _, newCostume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_costume(CT_CREAM_PACK2, newCostume)
end
