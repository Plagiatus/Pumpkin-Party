scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Shooting Gallery]\n","color": "#ff6600"},{"text": "Shoot the moving targets to collect points."}]
tellraw @s ["",{"text": "[Click here to start Shooting Gallery]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Shooting Gallery"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 4"}},"\n"]

data merge block ~ ~ ~ {is_waxed:1b,front_text:{messages:['{"text":"Shooting","bold":true,"color":"black"}','{"text":"Gallery","bold":true,"color":"black"}','{"text":""}','{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/sg"},"color":"black"}']}}