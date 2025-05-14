--- STEAMODDED HEADER
--- MOD_NAME: CHARLIE
--- MOD_ID: CHARLIEJOKAH
--- MOD_AUTHOR: KAYNO
--- MOD_DESCRIPTION: EGO MODPACK IG
--- PREFIX: xmpl
---------------------------------------
------------MOD CODE------



SMODS.Atlas {
    key = 'Jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

 SMODS.Joker {
	key = 'charliejokah',
	loc_txt = {
		name = 'Charlie Jokah',
		text = {
			"Each played {C:attention}6{} or {C:attention}5",
			"gives {X:mult,C:white} X#1# {} Mult when scored"
		}
	},
	config = { extra = { Xmult = 6.5 } },
	rarity = 3,
	atlas = 'Jokers',
	pos = { x = 0, y = 0 },
	cost = 20,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, } }
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 6 or context.other_card:get_id() == 5 then
				return {
					message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				   Xmult_mod = card.ability.extra.Xmult
				}
			end
		end
	end
}
    -------------------------------
    -------MOD CODE END------------