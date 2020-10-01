function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Treasure Room","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Avoid the spider long enough to get a sweet financial reward."}}},{"text":" in the \"Spider Run\" tab while wearing a "},{"text":"llama costume.\n","italic": true,"color": "#FF6600"}]
