function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Short Distances","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Walk 500 meters."}}},{"text":" in the \"Pumpkin Party\" tab.\n"}]
