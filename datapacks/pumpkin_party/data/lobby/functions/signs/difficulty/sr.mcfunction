scoreboard players add sr_difficulty settings 1
execute if score sr_difficulty settings matches 3.. run scoreboard players set sr_difficulty settings 0
scoreboard players operation #difficulty tmp = sr_difficulty settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/sr"}}'

function lobby:signs/difficulty/update_sign
function sr:difficulty_tellraw