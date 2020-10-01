function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Hot Feet","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Fall into the Lava."}}},{"text":" in the \"Spider Run\" tab.\n"}]
