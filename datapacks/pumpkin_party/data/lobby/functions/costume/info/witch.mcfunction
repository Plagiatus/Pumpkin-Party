function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Play Brewing Contest","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Mix some drinks for tonight's Halloween bash!"}}},{"text":" in the \"Brewing Contest\" tab.\n"}]
