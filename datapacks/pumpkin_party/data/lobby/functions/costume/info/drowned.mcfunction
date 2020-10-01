function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Win Graveyard Mayhem","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Don't worry, your pals will be back next round for you to beat again."}}},{"text":" in the \"Graveyard Mayhem\" tab while wearing a "},{"text":"zombie costume.\n","italic": true,"color": "#FF6600"}]
