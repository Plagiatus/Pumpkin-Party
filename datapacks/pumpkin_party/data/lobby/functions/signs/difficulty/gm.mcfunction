scoreboard players add gm_difficulty settings 1
execute if score gm_difficulty settings matches 3.. run scoreboard players set gm_difficulty settings 0
scoreboard players operation #difficulty tmp = gm_difficulty settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/gm"}}'

function lobby:signs/difficulty/update_sign
function gm:difficulty_tellraw