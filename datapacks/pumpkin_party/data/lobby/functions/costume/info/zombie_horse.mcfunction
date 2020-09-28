function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"A New Zombie","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Become greener than you were at the start of the round."}}},{"text":" in the \"Graveyard Mayhem\" tab while wearing a "},{"text":"horse costume.\n","italic": true,"color": "#FF6600"}]
