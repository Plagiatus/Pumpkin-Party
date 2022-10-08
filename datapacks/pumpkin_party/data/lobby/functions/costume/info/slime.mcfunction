function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Sticky Parkour","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Survive the slime filled tunnel."}}},{"text":" in the \"Spider Run\" tab.\n"}]
