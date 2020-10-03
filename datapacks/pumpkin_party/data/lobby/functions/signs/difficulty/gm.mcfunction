scoreboard players add gm_difficulty settings 1
execute if score gm_difficulty settings matches 3.. run scoreboard players set gm_difficulty settings 0
scoreboard players operation #difficulty tmp = gm_difficulty settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/gm"}}'}

function lobby:signs/difficulty/update_sign