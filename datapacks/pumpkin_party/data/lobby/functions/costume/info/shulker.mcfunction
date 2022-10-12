function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Magic Cabinets","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Find and use every magic cabinet in the mansion to teleport around."}}},{"text":" in the \"Pumpkin Party\" tab.\n"}]
