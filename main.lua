
G.low_buttons = {}
G.mid_buttons = {}
G.high_buttons = {}

SMODS.current_mod.description_loc_vars = function()
    return {background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2, shadow = true}
end

local wheelmove_hook = love.wheelmoved or function() end
function love.wheelmoved(x, y)
    G.wheel_scroll = y
	wheelmove_hook(x, y)
    G.E_MANAGER:add_event(Event({
        trigger = "after", 
        delay = 0.1,
        blocking = false,
        blockable = false,
        func = function() 
            G.wheel_scroll = 0
            return true 
        end
    }))
end

