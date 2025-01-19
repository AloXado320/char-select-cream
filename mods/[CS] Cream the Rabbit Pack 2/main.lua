-- name: [CS] [Bun] Cream (Pack 2)
-- description: Cream the Rabbit Costume Pack 2.\nCream & Friends.\n\n\\#ff7777\\This Pack requires Cream CS Mod\nto use as a Library!
-- category: cs

local TEXT_MOD_NAME = "Cream (Pack 2)"

E_MODEL_CREAM1_PACK2 = smlua_model_util_get_id("cream_vanilla_geo") -- Located in "actors"
E_MODEL_CREAM2_PACK2 = smlua_model_util_get_id("cream_amy_geo") -- Located in "actors"

E_MODEL_CREAM1_FLY_PACK2 = smlua_model_util_get_id("cream_vanilla_fly_geo") -- Located in "actors"
E_MODEL_CREAM2_FLY_PACK2 = smlua_model_util_get_id("cream_amy_fly_geo") -- Located in "actors"

if not _G.CreamBunCsExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Cream CS Mod\nto use as a Library!\n\nPlease turn on the Cream CS Mod\nand Restart the Room!", 6)
    return 0
end

local creamcs_get_character = _G.CreamBunCsApi.creamcs_get_character
local creamcs_get_life_icon = _G.CreamBunCsApi.creamcs_get_life_icon

local newCostumes = {
    {name = "Young Vanilla", model = E_MODEL_CREAM1_PACK2, flyModel = E_MODEL_CREAM1_FLY_PACK2},
    {name = "Amy Rose", model = E_MODEL_CREAM2_PACK2, flyModel = E_MODEL_CREAM2_FLY_PACK2},
}

CT_CREAM_PACK2 = _G.charSelect.character_add("Cream & Friends", {"She a bnuuy, She go hop!", "", "Pack 2 for Cream the Rabbit,", "she's ready to go make some new friends!", "", "HUD Sprites made by SketchMeister","New voice clips by MagaicalPoptarts"}, "Gamebun", {r = 248, g = 224, b = 184}, E_MODEL_CREAM1_PACK2, creamcs_get_character(), creamcs_get_life_icon())

_G.CreamBunCsApi.creamcs_add_health_meter(CT_CREAM_PACK2)

_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM1_PACK2, E_MODEL_CREAM1_FLY_PACK2)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM2_PACK2, E_MODEL_CREAM2_FLY_PACK2)

_G.CreamBunCsApi.creamcs_add_char(CT_CREAM_PACK2)

for _, newCostume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_costume(CT_CREAM_PACK2, newCostume)
end
