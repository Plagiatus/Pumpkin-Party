scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Brewing Contest]\n","color": "#ff6600"},{"text": "Collect the ingredients in the area and brew more potions than your competitors."}]
tellraw @s ["",{"text": "[Click here to start Brewing Contest]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Brewing Contest"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 1"}},"\n"]

data merge block ~ ~ ~ {Text1:'{"text":"Brewing","bold":true,"color":"black"}',Text2:'{"text":"Contest","bold":true,"color":"black"}',Text3:'{"text":""}',Text4:'{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/bc"},"color":"black"}'}