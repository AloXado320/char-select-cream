--
--  -------------
--  -- Cream The Rabbit CS API --
--  -------------
--
--  This personal API is intended for:
--  > Detecting if Cream CS is on, checking the active version of Cream CS
--  > Adding extra skin packs for each Cream character (be new or base character)
--  > Providing other mods access to Cream CS (if they want, but beware of breakage)
--
--  Beware if you use this personal API as it can break at any time when updating skin packs

_G.CreamBunCsExists = true
_G.CreamBunCsVersion = CREAM_CS_MOD_VERSION

_G.CreamBunCsApi = {
    creamcs_get_character = function ()
        return cream_character_get_character()
    end,

    creamcs_get_life_icon = function ()
        return cream_character_get_life_icon()
    end,

    creamcs_add_health_meter = function (cs)
        return cream_character_add_health_meter(cs)
    end,

    creamcs_add_char = function (cs)
        cream_character_add_char(cs)
    end,

    creamcs_add_model = function (model, flyModel)
        cream_character_add_model(model, flyModel)
    end,

    creamcs_add_costume = function (cs, costume)
        cream_character_add_costume(cs, costume)
    end,
}
