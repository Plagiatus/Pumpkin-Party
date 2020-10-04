scoreboard players add sg_difficulty settings 1
execute if score sg_difficulty settings matches 3.. run scoreboard players set sg_difficulty settings 0
scoreboard players operation #difficulty tmp = sg_difficulty settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/sg"}}'}

function lobby:signs/difficulty/update_sign
function sg:difficulty_tellraw