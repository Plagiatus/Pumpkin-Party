function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Slowest of them all","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Get infected in the first 5 seconds of the game."}}},{"text":" in the \"Graveyard Mayhem\" tab.\n"}]
