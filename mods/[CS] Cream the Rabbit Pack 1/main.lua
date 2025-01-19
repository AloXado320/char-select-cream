-- name: [CS] [Bun] Cream (Pack 1)
-- description: Cream the Rabbit Costume Pack 1.\nCream's official costumes.\n\n\\#ff7777\\This Pack requires Cream CS Mod\nto use as a Library!
-- category: cs

local TEXT_MOD_NAME = "Cream (Pack 1)"

E_MODEL_CREAM2 = smlua_model_util_get_id("cream_riders_geo") -- Located in "actors"
E_MODEL_CREAM3 = smlua_model_util_get_id("cream_winter_geo") -- Located in "actors"
E_MODEL_CREAM4 = smlua_model_util_get_id("cream_spring_geo") -- Located in "actors"
E_MODEL_CREAM5 = smlua_model_util_get_id("cream_unicorn_geo") -- Located in "actors"
E_MODEL_CREAM6 = smlua_model_util_get_id("cream_yukata_geo") -- Located in "actors"
E_MODEL_CREAM7 = smlua_model_util_get_id("cream_swimsuit_geo") -- Located in "actors"
E_MODEL_CREAM8 = smlua_model_util_get_id("cream_halloween_geo") -- Located in "actors"
E_MODEL_CREAM9 = smlua_model_util_get_id("cream_junihitoe_geo") -- Located in "actors"
E_MODEL_CREAM10 = smlua_model_util_get_id("cream_princess_geo") -- Located in "actors"
E_MODEL_CREAM11 = smlua_model_util_get_id("cream_detective_geo") -- Located in "actors"
E_MODEL_CREAM12 = smlua_model_util_get_id("cream_drummer_geo") -- Located in "actors"
E_MODEL_CREAM13 = smlua_model_util_get_id("cream_lunar_geo") -- Located in "actors"

E_MODEL_CREAM2_FLY = smlua_model_util_get_id("cream_riders_fly_geo") -- Located in "actors"
E_MODEL_CREAM3_FLY = smlua_model_util_get_id("cream_winter_fly_geo") -- Located in "actors"
E_MODEL_CREAM4_FLY = smlua_model_util_get_id("cream_spring_fly_geo") -- Located in "actors"
E_MODEL_CREAM5_FLY = smlua_model_util_get_id("cream_unicorn_fly_geo") -- Located in "actors"
E_MODEL_CREAM6_FLY = smlua_model_util_get_id("cream_yukata_fly_geo") -- Located in "actors"
E_MODEL_CREAM7_FLY = smlua_model_util_get_id("cream_swimsuit_fly_geo") -- Located in "actors"
E_MODEL_CREAM8_FLY = smlua_model_util_get_id("cream_halloween_fly_geo") -- Located in "actors"
E_MODEL_CREAM9_FLY = smlua_model_util_get_id("cream_junihitoe_fly_geo") -- Located in "actors"
E_MODEL_CREAM10_FLY = smlua_model_util_get_id("cream_princess_fly_geo") -- Located in "actors"
E_MODEL_CREAM11_FLY = smlua_model_util_get_id("cream_detective_fly_geo") -- Located in "actors"
E_MODEL_CREAM12_FLY = smlua_model_util_get_id("cream_drummer_fly_geo") -- Located in "actors"
E_MODEL_CREAM13_FLY = smlua_model_util_get_id("cream_lunar_fly_geo") -- Located in "actors"

if not _G.CreamBunCsExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Cream CS Mod\nto use as a Library!\n\nPlease turn on the Cream CS Mod\nand Restart the Room!", 6)
    return 0
end

local creamcs_get_character = _G.CreamBunCsApi.creamcs_get_character
local creamcs_get_life_icon = _G.CreamBunCsApi.creamcs_get_life_icon

local newCostumes = {
    {name = "Riders", model = E_MODEL_CREAM2, flyModel = E_MODEL_CREAM2_FLY},
    {name = "Winter", model = E_MODEL_CREAM3, flyModel = E_MODEL_CREAM3_FLY},
    {name = "Spring", model = E_MODEL_CREAM4, flyModel = E_MODEL_CREAM4_FLY},
    {name = "Unicorn", model = E_MODEL_CREAM5, flyModel = E_MODEL_CREAM5_FLY},
    {name = "Yukata", model = E_MODEL_CREAM6, flyModel = E_MODEL_CREAM6_FLY},
    {name = "Swimsuit", model = E_MODEL_CREAM7, flyModel = E_MODEL_CREAM7_FLY},
    {name = "Halloween", model = E_MODEL_CREAM8, flyModel = E_MODEL_CREAM8_FLY},
    {name = "Junihotoe", model = E_MODEL_CREAM9, flyModel = E_MODEL_CREAM9_FLY},
    {name = "Princess", model = E_MODEL_CREAM10, flyModel = E_MODEL_CREAM10_FLY},
    {name = "Detective", model = E_MODEL_CREAM11, flyModel = E_MODEL_CREAM11_FLY},
    {name = "Drummer", model = E_MODEL_CREAM12, flyModel = E_MODEL_CREAM12_FLY},
    {name = "Lunar NY, by Jennifer Hernandez", model = E_MODEL_CREAM13, flyModel = E_MODEL_CREAM13_FLY},
}

_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM2, E_MODEL_CREAM2_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM3, E_MODEL_CREAM3_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM4, E_MODEL_CREAM4_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM5, E_MODEL_CREAM5_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM6, E_MODEL_CREAM6_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM7, E_MODEL_CREAM7_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM8, E_MODEL_CREAM8_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM9, E_MODEL_CREAM9_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM10, E_MODEL_CREAM10_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM11, E_MODEL_CREAM11_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM12, E_MODEL_CREAM12_FLY)
_G.CreamBunCsApi.creamcs_add_model(E_MODEL_CREAM13, E_MODEL_CREAM13_FLY)

for _, newCostume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_costume(creamcs_get_character(), newCostume)
end
