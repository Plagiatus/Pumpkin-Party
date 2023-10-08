scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Graveyard Mayhem]\n","color": "#ff6600"},{"text": "Evade the Zombies until dawn."}]
tellraw @s ["",{"text": "[Click here to start Graveyard Mayhem]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Graveyard Mayhem"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 2"}},"\n"]

data merge block ~ ~ ~ {is_waxed:1b,front_text:{messages:['{"text":"Graveyard","bold":true,"color":"black"}','{"text":"Mayhem","bold":true,"color":"black"}','{"text":""}','{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/gm"},"color":"black"}']}}