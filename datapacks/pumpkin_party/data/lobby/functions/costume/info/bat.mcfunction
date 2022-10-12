function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Too Noisy!","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Fail the Warden's trial."}}},{"text":" in the \"Warden's Trial\" tab.\n"}]
