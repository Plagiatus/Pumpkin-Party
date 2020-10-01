function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Bulls Eye","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Get 10 points with one shot!"}}},{"text":" in the \"Shooting Gallery\" tab.\n"}]
