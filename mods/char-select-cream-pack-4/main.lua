-- name: [CS] [Bun] Cream (Pack 4)
-- description: Cream the Rabbit Costume Pack 4.\nCream Cosplay Vol 2.\n\n\\#ff7777\\This Pack requires Cream CS Mod\nto use as a Library!
-- category: cs

local TEXT_MOD_NAME = "Cream (Pack 4)"

-- Use the same number order as in Super Cream 64
E_MODEL_CREAM53 = smlua_model_util_get_id("cream_vanny_geo") -- Located in "actors"
E_MODEL_CREAM54 = smlua_model_util_get_id("cream_madotsuki_geo") -- Located in "actors"
E_MODEL_CREAM55 = smlua_model_util_get_id("cream_arle_geo") -- Located in "actors"
E_MODEL_CREAM56 = smlua_model_util_get_id("cream_dawn_geo") -- Located in "actors"
E_MODEL_CREAM57 = smlua_model_util_get_id("cream_serena_geo") -- Located in "actors"
E_MODEL_CREAM58 = smlua_model_util_get_id("cream_dqhero_geo") -- Located in "actors"
E_MODEL_CREAM59 = smlua_model_util_get_id("cream_mage_geo") -- Located in "actors"
E_MODEL_CREAM60 = smlua_model_util_get_id("cream_sybil_geo") -- Located in "actors"
E_MODEL_CREAM61 = smlua_model_util_get_id("cream_miku_geo") -- Located in "actors"
E_MODEL_CREAM62 = smlua_model_util_get_id("cream_wonder_geo") -- Located in "actors"
E_MODEL_CREAM63 = smlua_model_util_get_id("cream_sena_geo") -- Located in "actors"
E_MODEL_CREAM64 = smlua_model_util_get_id("cream_olimar_geo") -- Located in "actors"
E_MODEL_CREAM65 = smlua_model_util_get_id("cream_pit_geo") -- Located in "actors"
E_MODEL_CREAM66 = smlua_model_util_get_id("cream_ribbon_geo") -- Located in "actors"
E_MODEL_CREAM67 = smlua_model_util_get_id("cream_anya_geo") -- Located in "actors"
E_MODEL_CREAM68 = smlua_model_util_get_id("cream_rukia_geo") -- Located in "actors"
E_MODEL_CREAM69 = smlua_model_util_get_id("cream_kariya_geo") -- Located in "actors"
E_MODEL_CREAM70 = smlua_model_util_get_id("cream_luffy_geo") -- Located in "actors"
E_MODEL_CREAM71 = smlua_model_util_get_id("cream_carrot_geo") -- Located in "actors"
E_MODEL_CREAM72 = smlua_model_util_get_id("cream_goku_geo") -- Located in "actors"
E_MODEL_CREAM73 = smlua_model_util_get_id("cream_pan_geo") -- Located in "actors"
E_MODEL_CREAM74 = smlua_model_util_get_id("cream_nezuko_geo") -- Located in "actors"
E_MODEL_CREAM75 = smlua_model_util_get_id("cream_yugi_geo") -- Located in "actors"
E_MODEL_CREAM76 = smlua_model_util_get_id("cream_cream_geo") -- Located in "actors"
E_MODEL_CREAM77 = smlua_model_util_get_id("cream_sakura_geo") -- Located in "actors"
E_MODEL_CREAM78 = smlua_model_util_get_id("cream_austin_geo") -- Located in "actors"
E_MODEL_CREAM79 = smlua_model_util_get_id("cream_pomni_geo") -- Located in "actors"

E_MODEL_CREAM53_FLY = smlua_model_util_get_id("cream_vanny_fly_geo") -- Located in "actors"
E_MODEL_CREAM54_FLY = smlua_model_util_get_id("cream_madotsuki_fly_geo") -- Located in "actors"
E_MODEL_CREAM55_FLY = smlua_model_util_get_id("cream_arle_fly_geo") -- Located in "actors"
--E_MODEL_CREAM56_FLY = smlua_model_util_get_id("cream_dawn_fly_geo") -- Located in "actors"
--E_MODEL_CREAM57_FLY = smlua_model_util_get_id("cream_serena_fly_geo") -- Located in "actors"
E_MODEL_CREAM58_FLY = smlua_model_util_get_id("cream_dqhero_fly_geo") -- Located in "actors"
E_MODEL_CREAM59_FLY = smlua_model_util_get_id("cream_mage_fly_geo") -- Located in "actors"
E_MODEL_CREAM60_FLY = smlua_model_util_get_id("cream_sybil_fly_geo") -- Located in "actors"
E_MODEL_CREAM61_FLY = smlua_model_util_get_id("cream_miku_fly_geo") -- Located in "actors"
E_MODEL_CREAM62_FLY = smlua_model_util_get_id("cream_wonder_fly_geo") -- Located in "actors"
E_MODEL_CREAM63_FLY = smlua_model_util_get_id("cream_sena_fly_geo") -- Located in "actors"
--E_MODEL_CREAM64_FLY = smlua_model_util_get_id("cream_olimar_fly_geo") -- Located in "actors"
E_MODEL_CREAM65_FLY = smlua_model_util_get_id("cream_pit_fly_geo") -- Located in "actors"
E_MODEL_CREAM66_FLY = smlua_model_util_get_id("cream_ribbon_fly_geo") -- Located in "actors"
E_MODEL_CREAM67_FLY = smlua_model_util_get_id("cream_anya_fly_geo") -- Located in "actors"
E_MODEL_CREAM68_FLY = smlua_model_util_get_id("cream_rukia_fly_geo") -- Located in "actors"
E_MODEL_CREAM69_FLY = smlua_model_util_get_id("cream_kariya_fly_geo") -- Located in "actors"
--E_MODEL_CREAM70_FLY = smlua_model_util_get_id("cream_luffy_fly_geo") -- Located in "actors"
E_MODEL_CREAM71_FLY = smlua_model_util_get_id("cream_carrot_fly_geo") -- Located in "actors"
E_MODEL_CREAM72_FLY = smlua_model_util_get_id("cream_goku_fly_geo") -- Located in "actors"
E_MODEL_CREAM73_FLY = smlua_model_util_get_id("cream_pan_fly_geo") -- Located in "actors"
E_MODEL_CREAM74_FLY = smlua_model_util_get_id("cream_nezuko_fly_geo") -- Located in "actors"
E_MODEL_CREAM75_FLY = smlua_model_util_get_id("cream_yugi_fly_geo") -- Located in "actors"
E_MODEL_CREAM76_FLY = smlua_model_util_get_id("cream_cream_fly_geo") -- Located in "actors"
E_MODEL_CREAM77_FLY = smlua_model_util_get_id("cream_sakura_fly_geo") -- Located in "actors"
E_MODEL_CREAM78_FLY = smlua_model_util_get_id("cream_austin_fly_geo") -- Located in "actors"
--E_MODEL_CREAM79_FLY = smlua_model_util_get_id("cream_pomni_fly_geo") -- Located in "actors"

if not _G.CreamBunCsExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Cream CS Mod\nto use as a Library!\n\nPlease turn on the Cream CS Mod\nand Restart the Room!", 6)
    return 0
end

local creamcs_get_life_icon = _G.CreamBunCsApi.creamcs_get_life_icon

local newCostumes = {
    {name = "Vanny", model = E_MODEL_CREAM53, flyModel = E_MODEL_CREAM53_FLY},
    {name = "Madotsuki", model = E_MODEL_CREAM54, flyModel = E_MODEL_CREAM54_FLY},
    {name = "Arle", model = E_MODEL_CREAM55, flyModel = E_MODEL_CREAM55_FLY},
    {name = "Dawn", model = E_MODEL_CREAM56, flyModel = nil},
    {name = "Serena", model = E_MODEL_CREAM57, flyModel = nil},
    {name = "The Hero", model = E_MODEL_CREAM58, flyModel = E_MODEL_CREAM58_FLY},
    {name = "The Mage", model = E_MODEL_CREAM59, flyModel = E_MODEL_CREAM59_FLY},
    {name = "Sybil", model = E_MODEL_CREAM60, flyModel = E_MODEL_CREAM60_FLY},
    {name = "Hatsune Miku", model = E_MODEL_CREAM61, flyModel = E_MODEL_CREAM61_FLY},
    {name = "Wonder-Bun", model = E_MODEL_CREAM62, flyModel = E_MODEL_CREAM62_FLY},
    {name = "Sena", model = E_MODEL_CREAM63, flyModel = E_MODEL_CREAM63_FLY},
    {name = "Olimar", model = E_MODEL_CREAM64, flyModel = nil},
    {name = "Pit", model = E_MODEL_CREAM65, flyModel = E_MODEL_CREAM65_FLY},
    {name = "Ribbon", model = E_MODEL_CREAM66, flyModel = E_MODEL_CREAM66_FLY},
    {name = "Anya Forger", model = E_MODEL_CREAM67, flyModel = E_MODEL_CREAM67_FLY},
    {name = "Rukia Kuchiki", model = E_MODEL_CREAM68, flyModel = E_MODEL_CREAM68_FLY},
    {name = "Jin Kariya", model = E_MODEL_CREAM69, flyModel = E_MODEL_CREAM69_FLY},
    {name = "Monkey D. Luffy", model = E_MODEL_CREAM70, flyModel = nil},
    {name = "Carrot", model = E_MODEL_CREAM71, flyModel = E_MODEL_CREAM71_FLY},
    {name = "Son-Goku", model = E_MODEL_CREAM72, flyModel = E_MODEL_CREAM72_FLY},
    {name = "Pan", model = E_MODEL_CREAM73, flyModel = E_MODEL_CREAM73_FLY},
    {name = "Nezuko Kamado", model = E_MODEL_CREAM74, flyModel = E_MODEL_CREAM74_FLY},
    {name = "Yugi Muto", model = E_MODEL_CREAM75, flyModel = E_MODEL_CREAM75_FLY},
    {name = "Cream", model = E_MODEL_CREAM76, flyModel = E_MODEL_CREAM76_FLY},
    {name = "Sakura Kinomoto", model = E_MODEL_CREAM77, flyModel = E_MODEL_CREAM77_FLY},
    {name = "Stone Cold Steve Austin", model = E_MODEL_CREAM78, flyModel = E_MODEL_CREAM78_FLY},
    {name = "Pomni", model = E_MODEL_CREAM79, flyModel = nil},
}

CT_CREAM_PACK4 = _G.charSelect.character_add("Cream Cosplay Vol 2", {"She a bnuuy, She go hop!", "", "Pack 4 - Cream the Rabbit", "Ready to dress up as other characters!", "", "HUD Sprites made by SketchMeister","New voice clips by MagaicalPoptarts"}, "Gamebun", {r = 248, g = 224, b = 184}, newCostumes[1].model, CT_MARIO, creamcs_get_life_icon())

_G.CreamBunCsApi.creamcs_add_health_meter(CT_CREAM_PACK4)

_G.CreamBunCsApi.creamcs_add_char(CT_CREAM_PACK4)

for _, costume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_model(costume.model, costume.flyModel)
end

for _, newCostume in ipairs(newCostumes) do
    _G.CreamBunCsApi.creamcs_add_costume(CT_CREAM_PACK4, newCostume)
end
