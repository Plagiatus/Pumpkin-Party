scoreboard players add bc_difficulty settings 1
execute if score bc_difficulty settings matches 3.. run scoreboard players set bc_difficulty settings 0
scoreboard players operation #difficulty tmp = bc_difficulty settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/bc"}}'}

function lobby:signs/difficulty/update_sign
function bc:difficulty_tellraw