function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Saved by the Sun","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Those zombies should've worn sunscreen."}}},{"text":" in the \"Graveyard Mayhem\" tab while wearing the "},{"text":"\"Zombie Costume\".\n","italic": true,"color": "#FF6600"}]
