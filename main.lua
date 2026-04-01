
G.low_buttons = {}
G.mid_buttons = {}
G.high_buttons = {}

LOSS = SMODS.current_mod

LOSS.description_loc_vars = function()
    return {background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2, shadow = true}
end

function LOSS.merge_tables(table_o, table_n)
    for i = 1, #table_o do
        if type(table_o[i]) == "function" then
            table_n[i] = table_o[i]()
        else
            table_n[i] = table_o[i]
        end
    end
end
