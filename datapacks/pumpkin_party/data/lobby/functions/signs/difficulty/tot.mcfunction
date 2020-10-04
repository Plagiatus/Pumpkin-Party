scoreboard players add tot_difficulty settings 1
execute if score tot_difficulty settings matches 3.. run scoreboard players set tot_difficulty settings 0
scoreboard players operation #difficulty tmp = tot_difficulty settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/tot"}}'}

function lobby:signs/difficulty/update_sign
function tot:difficulty_tellraw