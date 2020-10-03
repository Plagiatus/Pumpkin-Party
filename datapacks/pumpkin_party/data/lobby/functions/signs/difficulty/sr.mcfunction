scoreboard players add sr_difficulty settings 1
execute if score sr_difficulty settings matches 3.. run scoreboard players set sr_difficulty settings 0
scoreboard players operation #difficulty tmp = sr_difficulty settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/sr"}}'}

function lobby:signs/difficulty/update_sign