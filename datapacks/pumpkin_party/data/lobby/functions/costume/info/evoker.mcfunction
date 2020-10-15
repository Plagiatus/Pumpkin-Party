function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Master Brewer","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Brew all ten possible potions at least once."}}},{"text":" in the \"Brewing Contest\" tab.\n"}]
