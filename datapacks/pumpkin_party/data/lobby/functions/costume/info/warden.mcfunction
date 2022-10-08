function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Perfect Pitch","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Perfectly clear the Warden's trial."}}},{"text":" in the \"Warden's Trial\" tab.\n"}]
