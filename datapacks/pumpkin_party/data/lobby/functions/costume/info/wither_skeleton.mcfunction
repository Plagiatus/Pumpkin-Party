function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Perhaps a different game...","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Do really badly. Really, really badly."}}},{"text":" in the \"Shooting Gallery\" tab while wearing a "},{"text":"skeleton costume.\n","italic": true,"color": "#FF6600"}]
