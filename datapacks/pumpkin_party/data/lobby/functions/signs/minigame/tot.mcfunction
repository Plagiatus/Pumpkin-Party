scoreboard players enable @s lbb_game
tellraw @s ["",{"text": "\n[Trick or Treat]\n","color": "#ff6600"},{"text": "Knock on doors and collect the most treats."}]
tellraw @s ["",{"text": "[Click here to start Trick or Treat]","color": "dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Click here to start Trick or Treat"}},"clickEvent": {"action": "run_command","value": "/trigger lbb_game set 6"}},"\n"]

data merge block ~ ~ ~ {Text1:'{"text":"","bold":true,"color":"black"}',Text2:'{"text":"Trick or Treat","bold":true,"color":"black"}',Text3:'{"text":""}',Text4:'{"text":"[click here]","clickEvent":{"action":"run_command","value":"function lobby:signs/minigame/tot"},"color":"black"}'}