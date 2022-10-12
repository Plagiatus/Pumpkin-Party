function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Tunnel Explorer","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Visit every different kind of tunnel."}}},{"text":" in the \"Spider Run\" tab.\n"}]
