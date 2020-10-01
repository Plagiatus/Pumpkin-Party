function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Recipe Meltdown","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Store-bought drinks might not blow up on you, but these potions will."}}},{"text":" in the \"Brewing Contest\" tab while wearing a "},{"text":"piglin costume.\n","italic": true,"color": "#FF6600"}]
