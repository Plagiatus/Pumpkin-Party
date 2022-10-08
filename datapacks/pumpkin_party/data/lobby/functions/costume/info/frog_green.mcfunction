execute positioned ~ ~-1 ~ run function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"An Armful of Froglegs","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Have every single ingredient on you at once."}}},{"text":" in the \"Brewing Contest\" tab.\n"}]
