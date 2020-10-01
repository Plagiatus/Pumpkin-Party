function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Long Distances","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Walk 2500 meters."}}},{"text":" in the \"Pumpkin Party\" tab.\n"}]
