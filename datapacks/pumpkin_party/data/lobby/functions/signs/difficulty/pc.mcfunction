scoreboard players add pc_difficulty settings 1
execute if score pc_difficulty settings matches 3.. run scoreboard players set pc_difficulty settings 0
scoreboard players operation #difficulty tmp = pc_difficulty settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/pc"}}'

function lobby:signs/difficulty/update_sign
function pc:difficulty_tellraw