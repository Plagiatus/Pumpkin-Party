function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Lame Donkey","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Get caught in the first few tunnel segments."}}},{"text":" in the \"Spider Run\" tab while wearing a "},{"text":"horse costume.\n","italic": true,"color": "#FF6600"}]
