scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Warden's Lair]\n","color": "#ff6600"},{"text": "Follow the prompts to not anger the Warden."}]
tellraw @s ["",{"text": "[Click here to start Warden's Lair]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Warden's Lair"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 7"}},"\n"]

data merge block ~ ~ ~ {is_waxed:1b,front_text:{messages:['{"text":"Warden\'s","bold":true,"color":"black"}','{"text":"Lair","bold":true,"color":"black"}','{"text":""}','{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/wd"},"color":"black"}']}}