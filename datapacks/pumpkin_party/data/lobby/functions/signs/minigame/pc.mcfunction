scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Pumpkin Carving]\n","color": "#ff6600"},{"text": "Replicate the patterns shown on the wall as fast as possible."}]
tellraw @s ["",{"text": "[Click here to start Pumpkin Carving]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Pumpkin Carving"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 3"}},"\n"]

data merge block ~ ~ ~ {Text1:'{"text":"Pumpkin","bold":true,"color":"black"}',Text2:'{"text":"Carving","bold":true,"color":"black"}',Text3:'{"text":""}',Text4:'{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/pc"},"color":"black"}'}