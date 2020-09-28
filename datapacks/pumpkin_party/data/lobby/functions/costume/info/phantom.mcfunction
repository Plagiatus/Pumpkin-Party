function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Party time, all the time.","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Play for 5 ingame days."}}},{"text":" in the \"Pumpkin Party\" tab.\n"}]
