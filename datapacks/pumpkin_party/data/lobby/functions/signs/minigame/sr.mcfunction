scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Spider Run]\n","color": "#ff6600"},{"text": "Run away from a giant spider chasing you through a randomly generated tunnel."}]
tellraw @s ["",{"text": "[Click here to start Spider Run]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Spider Run"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 5"}},"\n"]

data merge block ~ ~ ~ {Text1:'{"text":"","bold":true,"color":"black"}',Text2:'{"text":"Spider Run","bold":true,"color":"black"}',Text3:'{"text":""}',Text4:'{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/sr"},"color":"black"}'}