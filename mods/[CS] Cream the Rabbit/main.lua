-- name: [CS] Cream the Rabbit
-- description: Starring Cream. She wittle bnuuy. She go hop hop.\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
]]

local TEXT_MOD_NAME = "Cream the Rabbit"
local TEXT_MOD_VERSION = "2.0"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

E_MODEL_CREAM = smlua_model_util_get_id("cream_geo") -- Located in "actors"
E_MODEL_CREAM_FLY = smlua_model_util_get_id("cream_fly_geo") -- Located in "actors"

E_MODEL_CREAM2 = smlua_model_util_get_id("cream_riders_geo") -- Located in "actors"
E_MODEL_CREAM2_FLY = smlua_model_util_get_id("cream_riders_fly_geo") -- Located in "actors"

local TEX_CREAM_LIFE_ICON = get_texture_info("cream-icon") -- Located in "textures"
local TEX_CREAM_STAR_ICON = get_texture_info("star-icon") -- Located in "textures"

-- All Located in "sound"
local VOICETABLE_CREAM = {
	[CHAR_SOUND_LETS_A_GO] = 'cream_lets_go.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'cream_punch_yah.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'cream_punch_wah.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'cream_punch_hoo.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'cream_punch_yah.ogg', 'cream_punch_wah.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'cream_hoohoo.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'cream_yahoo.ogg', 'cream_waha.ogg', 'cream_yippie.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'cream_uh.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'cream_uh2.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'cream_uh2.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'cream_haha.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'cream_yahoo.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'cream_doh.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'cream_whoa.ogg', -- Grabbing ledge
    [CHAR_SOUND_WAH2] = 'cream_wah2.ogg',
	[CHAR_SOUND_EEUH] = 'cream_eeuh.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'cream_scream.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'cream_whee.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'cream_groundpound_wah.ogg', 
	[CHAR_SOUND_HRMM] = 'cream_hrmm.ogg', -- Lifting something
    [CHAR_SOUND_OOOF] = 'cream_oof.ogg', -- Getting nudged
    [CHAR_SOUND_OOOF2] = 'cream_oof.ogg', -- Getting nudged
	[CHAR_SOUND_HERE_WE_GO] = 'cream_here_we_go.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'cream_buhbye.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'cream_attacked.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = {'cream_panting1.ogg', 'cream_panting2.ogg', 'cream_panting3.ogg'}, -- Low health
	[CHAR_SOUND_ON_FIRE] = 'cream_onfire.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'cream_imtired.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'cream_yawning.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'cream_snoring1.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'cream_snoring2.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'cream_snoring3.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'cream_cough1.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'cream_cough2.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'cream_cough3.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'cream_dying.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'cream_silent.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'cream_awww.ogg' -- Booted out of level
}

   -- All Located in "actors"
local CAPTABLE_CREAM = {
    normal = smlua_model_util_get_id("cream_cap_geo"),
    wing = smlua_model_util_get_id("cream_wing_cap_geo"),
    metal = smlua_model_util_get_id("cream_metal_cap_geo"),
    metalWing = smlua_model_util_get_id("cream_wing_cap_geo"),
}

local E_MODEL_CREAM_STAR = smlua_model_util_get_id("cream_star_geo") -- Located in "actors"

local PALETTE_CREAM = {
    [PANTS]  = "FCC201",
    [SHIRT]  = "FF5A00",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "604D35",
    [HAIR]   = "F7A493",
    [SKIN]   = "F8E0B8",
    [CAP]    = "FF8F00",
    [EMBLEM] = "77B9E2",
}

--
-- All Located in "textures"
local creamHealthMeter = {
    label = {
        left = get_texture_info("creamhp-back-left"),
        right = get_texture_info("creamhp-back-right"),
    },
    pie = {
        [1] = get_texture_info("creamhp-pie-1"),
        [2] = get_texture_info("creamhp-pie-2"),
        [3] = get_texture_info("creamhp-pie-3"),
        [4] = get_texture_info("creamhp-pie-4"),
        [5] = get_texture_info("creamhp-pie-5"),
        [6] = get_texture_info("creamhp-pie-6"),
        [7] = get_texture_info("creamhp-pie-7"),
        [8] = get_texture_info("creamhp-pie-8"),
    }
}

gCreamState = {}
for i=0,(MAX_PLAYERS-1) do
    gCreamState[i] = {}
    local e = gCreamState[i]
    local m = gMarioStates[i]
    e.flyTimer = 0
    e.flyStamina = 0
    e.flySoundState = 0
end


--[[
    Note: If there are some functionalities you don't care
    to add such as palettes, you can freely remove the function
    for it, the only function you require is character_add
]]


local function cream_character_add_model(model, flyModel)
    _G.charSelect.character_add_caps(model, CAPTABLE_CREAM)
    _G.charSelect.character_add_voice(model, VOICETABLE_CREAM)
    _G.charSelect.character_add_voice(flyModel, VOICETABLE_CREAM)
    _G.charSelect.character_add_celebration_star(model, E_MODEL_CREAM_STAR, TEX_CREAM_STAR_ICON)
end

--local CSloaded = false
--local function on_character_select_load()
    CT_CREAM = _G.charSelect.character_add("Cream the Rabbit", {"She a bnuuy, She go hop!", "", "Straight from Super Cream 64,", "she's ready to go make some new friends!", "", "HUD Sprites made by SketchMeister","New voice clips by MagaicalPoptarts"}, "Gamebun", {r = 248, g = 224, b = 184}, E_MODEL_CREAM, CT_MARIO, TEX_CREAM_LIFE_ICON)

    cream_character_add_model(E_MODEL_CREAM, E_MODEL_CREAM_FLY)
    cream_character_add_model(E_MODEL_CREAM2, E_MODEL_CREAM2_FLY)
    --_G.charSelect.character_add_palette_preset(E_MODEL_CREAM, PALETTE_CREAM)
    _G.charSelect.character_add_health_meter(CT_CREAM, creamHealthMeter)
    --CSloaded = true
--end

local function on_character_sound(m, sound)
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CREAM then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CREAM then return _G.charSelect.voice.snore(m) end
end

--hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)

-----------------------------------------
--- Act Hovering code                 ---
--- By Alonwoof, ported by AloXado320 ---
-----------------------------------------

ACT_HOVERING = allocate_mario_action(ACT_FLAG_AIR | ACT_FLAG_ALLOW_VERTICAL_WIND_ACTION)

function convert_s16(num)
    local min = -32768
    local max = 32767
    while (num < min) do
        num = max + (num - min)
    end
    while (num > max) do
        num = min + (num - max)
    end
    return num
end

--- @param m MarioState
local function update_air_hovering(m)
    local sidewaysSpeed = 0.0
    local dragThreshold = 32.0
    local intendedDYaw = 0
    local intendedMag = 0
    if (m.input & INPUT_NONZERO_ANALOG) ~= 0 then
        intendedDYaw = m.intendedYaw - m.faceAngle.y
        intendedMag = m.intendedMag / 32.0

        m.forwardVel = m.forwardVel + intendedMag * coss(intendedDYaw) * 1.0
        sidewaysSpeed = intendedMag * sins(intendedDYaw) * 10.0
    else
        if (math.abs(m.forwardVel) > 0.1) then
            m.forwardVel = (m.forwardVel * 0.75)
        else
            m.forwardVel = 0.0
        end
    end

    if (m.forwardVel > dragThreshold) then
        m.forwardVel = m.forwardVel - 1.0
    end

    if (m.forwardVel < -16.0) then
        m.forwardVel = m.forwardVel + 2.0
    end

    m.faceAngle.y = m.intendedYaw - approach_s32(convert_s16(m.intendedYaw - m.faceAngle.y), 0, 0x800, 0x800)

    m.slideVelX = m.forwardVel * sins(m.faceAngle.y)
    m.slideVelZ = m.forwardVel * coss(m.faceAngle.y)

    m.vel.x = m.slideVelX
    m.vel.z = m.slideVelZ
end

--- @param m MarioState
local function act_hovering(m)
    local e = gCreamState[m.playerIndex]
    local max_stamina = 60

    if (m.controller.buttonDown & A_BUTTON) ~= 0 and e.flyStamina < max_stamina then
        local offset = sins(m.actionTimer * 0.1)
        m.vel.y = offset

        if (e.flyTimer < 5) then
            m.forwardVel = m.forwardVel * 0.85
            m.vel.x = m.vel.x * 0.65
            m.vel.z = m.vel.z * 0.65
            play_mario_sound(m, 0, CHAR_SOUND_TWIRL_BOUNCE)
            e.flySoundState = 1
        end

        --Only effect stamina when moving.
        if ((m.input & INPUT_NONZERO_ANALOG) ~= 0 and e.flyTimer > 10) then
            e.flyStamina = e.flyStamina + 1
            if (e.flySoundState == 1) then -- sound state to fix mario looping sound when holding A
                m.flags = m.flags & ~(MARIO_ACTION_SOUND_PLAYED | MARIO_MARIO_SOUND_PLAYED)
                e.flySoundState = 2
            end
        end

        if (e.flyTimer < 50) then
            m.vel.y = (50 - e.flyTimer) * 0.25
            e.flyTimer = e.flyTimer + 1
        end
    else
        --Gently float down~
        if (m.vel.y < -20) then m.vel.y = -20 end

        if (e.flyStamina >= max_stamina) then
            m.marioBodyState.eyeState = MARIO_EYES_HALF_CLOSED
        end
    end

    if (e.flyStamina >= max_stamina and e.flySoundState == 2) then
        play_mario_sound(m, 0, CHAR_SOUND_YAWNING)
        e.flySoundState = 0
    end

    if (m.input & INPUT_Z_PRESSED) ~= 0 then
        return set_mario_action(m, ACT_GROUND_POUND, 0)
    end

    m.actionTimer = m.actionTimer + 1

    common_air_action_step(m, ACT_FREEFALL_LAND, MARIO_ANIM_TWIRL, AIR_STEP_CHECK_LEDGE_GRAB)
    update_air_hovering(m)
    smlua_anim_util_set_animation(m.marioObj, "cream_anim_hovering")

    return false
end

hook_mario_action(ACT_HOVERING, act_hovering)

---------------------------------------------
--- Alt Costume code from Paper Partners  ---
--- By Squishy, hover edits by AloXado320 ---
---------------------------------------------

local character_edit = _G.charSelect.character_edit
local character_get_current_number = _G.charSelect.character_get_current_number
local character_get_current_table = _G.charSelect.character_get_current_table
local get_options_status = _G.charSelect.get_options_status
local get_menu_color = _G.charSelect.get_menu_color
local hook_render_in_menu = _G.charSelect.hook_render_in_menu

local table_insert = table.insert
local play_sound = play_sound
local djui_hud_get_screen_width = djui_hud_get_screen_width
local djui_hud_measure_text = djui_hud_measure_text
local djui_hud_set_color = djui_hud_set_color
local djui_hud_set_resolution = djui_hud_set_resolution
local djui_hud_set_rotation = djui_hud_set_rotation
local djui_hud_set_font = djui_hud_set_font
local djui_hud_print_text = djui_hud_print_text
local djui_hud_render_rect = djui_hud_render_rect
local maxf = maxf
local math_min = math.min
local math_max = math.max
local math_sin = math.sin

local altCostumes = {
    [CT_CREAM] = {
        currSkin = 1,
        {name = "", model = E_MODEL_CREAM, flyModel = E_MODEL_CREAM_FLY},
        {name = "Riders", model = E_MODEL_CREAM2, flyModel = E_MODEL_CREAM2_FLY},
    },
}

local function update_character_skin(currChar, currAlt)
    local currSkin = altCostumes[currChar][currAlt]
    if altCostumes[currChar].desc == nil then
        altCostumes[currChar].desc = character_get_current_table().description
    end
    local description = {}
    for i = 1, #altCostumes[currChar].desc do
        table_insert(description, altCostumes[currChar].desc[i])
    end
    if currSkin.name ~= "" then
        table_insert(description, "")
        table_insert(description, "Outfit: "..currSkin.name)
    end
    if (gMarioStates[0].action == ACT_HOVERING and (gMarioStates[0].flags & MARIO_WING_CAP) == 0) then
        character_edit(currChar, nil, description, nil, nil, currSkin.flyModel, nil, nil)
    else
        character_edit(currChar, nil, description, nil, nil, currSkin.model, nil, nil)
    end
    local cameraToObject = gMarioStates[0].marioObj.header.gfx.cameraToObject
    play_sound(SOUND_MENU_MESSAGE_NEXT_PAGE, cameraToObject)
end

local inputLockTimer = 0
local buttonAnimTimer = 0

local MATH_DIVIDE_320 = 1/320

local latencyValueTable = {12, 6, 3}

-- Variable to not colide with hovering character edit
local changingOutfit = 0

local function hud_render()
    local width = djui_hud_get_screen_width() + 1.4
    local widthScale = maxf(width, 321.4) * MATH_DIVIDE_320
    local currChar = character_get_current_number()
    local charColors = character_get_current_table().color

    -- Mimick button swaying, which is missing from the paper code
    local buttonAnim = 0
    local charSelectAnim = get_options_status(_G.charSelect.optionTableRef.anims)
    if charSelectAnim > 0 then
        buttonAnimTimer = buttonAnimTimer + 1
        buttonAnim = math_sin(buttonAnimTimer * 0.05) * 2.5 + 5
    else
        buttonAnim = 10
    end

    local inputLockTimerTo = latencyValueTable[get_options_status(_G.charSelect.optionTableRef.inputLatency) + 1]

    if altCostumes[currChar] ~= nil then
        -- Render Mod Variond under CS version
        local menuColor = get_menu_color()
        djui_hud_set_color(menuColor.r, menuColor.g, menuColor.b, 255)
        djui_hud_set_font(FONT_TINY)
        local string = TEXT_MOD_NAME.." ("..TEXT_MOD_VERSION..")"
        djui_hud_print_text(string, width - 5 - djui_hud_measure_text(string)*0.5, 3, 0.5)

        ---@type Controller
        local c = _G.charSelect.controller
        local currAlts = altCostumes[currChar]

        djui_hud_set_font(FONT_NORMAL)
        djui_hud_set_resolution(RESOLUTION_N64)
        local inputLockTimerAnim = 0

        local buttonX = 20 * widthScale + buttonAnim
        local x1 = buttonX - 4
        local x2 = x1 + 73
        local y = 97

        if charSelectAnim > 0 then
            inputLockTimerAnim = inputLockTimer/inputLockTimerTo * 3
            x1 = x1 + math_min(inputLockTimerAnim, 0)
            x2 = x2 + math_max(inputLockTimerAnim, 0)
        end
        -- Left Arrow
        if currAlts.currSkin > 1 then
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_set_rotation(0x2000, 0.5, 0.5)
            djui_hud_render_rect(x1, y, 5, 5)
            djui_hud_set_color(0, 0, 0, 255)
            djui_hud_set_rotation(0x0000, 0.5, 0.5)
            djui_hud_render_rect(x1 + 2.5, y - 2, 6, 8)
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_render_rect(buttonX, y - 3, 1, 10)
            changingOutfit = 0

            if inputLockTimer == 0 and (c.buttonDown & L_JPAD ~= 0 or c.stickX < -0.5) then
                changingOutfit = 1
                currAlts.currSkin = math_max(currAlts.currSkin - 1, 1)
                update_character_skin(currChar, currAlts.currSkin)
                inputLockTimer = -inputLockTimerTo
            end
        end
        -- Right Arrow
        if currAlts.currSkin < #currAlts then
            -- Changed arrows to mimick the ones seen in the options menu
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_set_rotation(0x2000, 0.5, 0.5)
            djui_hud_render_rect(x2, y, 5, 5)
            djui_hud_set_color(0, 0, 0, 255)
            djui_hud_set_rotation(0x0000, 0.5, 0.5)
            djui_hud_render_rect(x2 - 3.5, y - 2, 6, 8)
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_render_rect(buttonX + 69, y - 3, 1, 10)
            changingOutfit = 0

            if inputLockTimer == 0 and (c.buttonDown & R_JPAD ~= 0 or c.stickX > 0.5) then
                changingOutfit = 1
                currAlts.currSkin = currAlts.currSkin + 1
                update_character_skin(currChar, currAlts.currSkin)
                inputLockTimer = inputLockTimerTo
            end
        end
        -- use an input lock to prevent cycling too fast
        if inputLockTimer > 0 then
            inputLockTimer = inputLockTimer - 1
        elseif inputLockTimer < 0 then
            inputLockTimer = inputLockTimer + 1
        end
    end
end

hook_render_in_menu(hud_render)

-- Change cream's model to her fly one during hovering
local function cream_model_update(m)
    if not _G.charSelectExists then return end
    local currChar = character_get_current_number()

    if m.playerIndex == 0 and changingOutfit == 0 and altCostumes[currChar] ~= nil then
        local currChar = character_get_current_number()
        local currAlts = altCostumes[currChar]
        local currSkin = altCostumes[currChar][currAlts.currSkin]
        if (m.action == ACT_HOVERING and (m.flags & MARIO_WING_CAP) == 0) then
            character_edit(currChar, nil, nil, nil, nil, currSkin.flyModel)
        else
            character_edit(currChar, nil, nil, nil, nil, currSkin.model)
        end
    end
end

hook_event(HOOK_MARIO_UPDATE, cream_model_update)

-- Check for cream's model to do her exclusive actions
local function character_has_cream_model(m)
    for _, costume in ipairs(altCostumes[CT_CREAM]) do
        if
            obj_has_model_extended(m.marioObj, costume.model) ~= 0 or
                obj_has_model_extended(m.marioObj, costume.flyModel) ~= 0
         then
            return true
        end
    end
    return false
end

ACT_CREAM_EXIT_STAR = allocate_mario_action(ACT_FLAG_STATIONARY | ACT_FLAG_INTANGIBLE)

local function act_cream_exit_star(m)
    stationary_ground_step(m)
    set_mario_animation(m, MARIO_ANIM_TAKE_CAP_OFF_THEN_ON)
    local animFrame = m.marioObj.header.gfx.animInfo.animFrame
    if not (animFrame < 12) and animFrame < 80 then
        m.marioBodyState.eyeState = MARIO_EYES_LOOK_LEFT
    end
    if not (animFrame < 81) then
        m.marioBodyState.eyeState = MARIO_EYES_LOOK_RIGHT
    end
    if animFrame == 10 then
        m.marioBodyState.eyeState = MARIO_EYES_CLOSED;
    end
    if animFrame == 30 then
        play_sound(SOUND_ACTION_TERRAIN_LANDING, m.marioObj.header.gfx.cameraToObject);
    end
    if animFrame == 80 then
        -- This is terrible, any custom sound function won't play when the previous action is ACT_EXIT_LAND_SAVE_DIALOG
        -- As a matter for fact, playing this function:
        -- play_sound(SOUND_MARIO_HAHA, m.marioObj.header.gfx.cameraToObject)
        -- Does makes it play properly albeit with Mario's voice
        play_character_sound(m, CHAR_SOUND_HAHA)
    end
    m.marioObj.header.gfx.angle.y = m.marioObj.header.gfx.angle.y + 0x8000
    --djui_chat_message_create(tostring(animFrame))
    if m == gMarioStates[0] then handle_save_menu(m) end
    return false
end

hook_mario_action(ACT_CREAM_EXIT_STAR, act_cream_exit_star)

local creamStarAct = {
    [ACT_STAR_DANCE_EXIT] = true,
    [ACT_STAR_DANCE_NO_EXIT] = true,
    [ACT_STAR_DANCE_WATER] = true,
}

-- Cream's face expressions
local function cream_set_expressions(m)
    -- Make a new action state for custom exit star celebration
    if m.action == ACT_EXIT_LAND_SAVE_DIALOG and m.actionState == 3 then
        set_mario_action(m, ACT_CREAM_EXIT_STAR, 0)
    end

    -- Cream's happy expression when she gets a star
    if creamStarAct[m.action] then
        if m.actionState == 0 then
            if m.actionTimer == 1 then m.marioBodyState.eyeState = MARIO_EYES_LOOK_LEFT end
            if m.actionTimer == 42 or m.actionTimer == 80 then
                m.marioBodyState.eyeState = MARIO_EYES_LOOK_RIGHT
            end
        end
        if m.actionState ~= 2 and m.actionTimer >= 40 then
            m.marioBodyState.eyeState = MARIO_EYES_LOOK_RIGHT
        end
    end
end

local creamHoverAct = {
    [ACT_JUMP] = true,
    [ACT_DOUBLE_JUMP] = true,
    [ACT_TRIPLE_JUMP] = true,
    [ACT_SIDE_FLIP] = true,
    [ACT_WALL_KICK_AIR] = true,
    [ACT_WATER_JUMP] = true,
    [ACT_TOP_OF_POLE_JUMP] = true,
    [ACT_SPECIAL_TRIPLE_JUMP] = true,
}

-- MARIO_ANIM_PULL_DOOR_WALK_IN was changed in SC64 but there's no noticeable change
local creamAnimTable = {
    -- Regular animations
    [MARIO_ANIM_PUT_CAP_ON] = "cream_anim_cap_on", -- 0x36
    [MARIO_ANIM_TAKE_CAP_OFF_THEN_ON] = "cream_anim_painting_jump", -- 0x37
    [MARIO_ANIM_RUNNING] = "cream_anim_running", -- 0x72
    [MARIO_ANIM_RUNNING_UNUSED] = "cream_anim_running", -- 0x73
    [MARIO_ANIM_IDLE_HEAD_LEFT] = "cream_anim_idle_head", -- 0xC3
    [MARIO_ANIM_IDLE_HEAD_RIGHT] = "cream_anim_idle_head", -- 0xC4
    [MARIO_ANIM_IDLE_HEAD_CENTER] = "cream_anim_idle_head", -- 0xC5
    [MARIO_ANIM_STAR_DANCE] = "cream_anim_star_dance", -- 0xCD
    -- Sleeping animations
    [MARIO_ANIM_START_SLEEP_IDLE] = "cream_anim_start_sleep_idle", -- 0x81
    [MARIO_ANIM_START_SLEEP_SCRATCH] = "cream_anim_start_sleep_scratch", -- 0x82
    [MARIO_ANIM_START_SLEEP_YAWN] = "cream_anim_star_sleep_yawn", -- 0x83
    [MARIO_ANIM_START_SLEEP_SITTING] = "cream_anim_star_sleep_sitting", -- 0x84
    [MARIO_ANIM_SLEEP_IDLE] = "cream_anim_sleep_idle", -- 0x85
    [MARIO_ANIM_SLEEP_START_LYING] = "cream_anim_sleep_start_lying", -- 0x86
    [MARIO_ANIM_SLEEP_LYING] = "cream_anim_sleep_lying", -- 0x87
    [MARIO_ANIM_WAKE_FROM_SLEEP] = "cream_anim_waking_sitting", -- 0xC8
    [MARIO_ANIM_WAKE_FROM_LYING] = "cream_anim_waking_lying_down", -- 0xC9
}

local function cream_update(m, e)
    -- Animations
    if creamAnimTable[m.marioObj.header.gfx.animInfo.animID] then
        smlua_anim_util_set_animation(m.marioObj, creamAnimTable[m.marioObj.header.gfx.animInfo.animID])
    end

    -- Expressions
    cream_set_expressions(m)

    -- Hovering
    if m.vel.y < 20 and m.prevAction ~= ACT_HOVERING then
        if creamHoverAct[m.action] and (m.input & INPUT_A_PRESSED) ~= 0 then
            set_mario_action(m, ACT_HOVERING, 0)
        end
        if m.action == ACT_LONG_JUMP and (m.input & INPUT_B_PRESSED) ~= 0 then
            set_mario_action(m, ACT_HOVERING, 0)
        end
    end

    if m.action == ACT_HOVERING then
        m.marioBodyState.wingFlutter = 1
        m.marioBodyState.capState = MARIO_HAS_WING_CAP_ON
    else
        if e.flyStamina ~= 0 then e.flyStamina = 0 end
        if e.flyTimer ~= 0 then e.flyTimer = 0 end
        if e.soundState ~= 0 then e.soundState = 0 end
    end
end

local function mario_update(m)
    if not _G.charSelectExists then return end
    local e = gCreamState[m.playerIndex]

    if character_has_cream_model(m) then
        cream_update(m, e)
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)
