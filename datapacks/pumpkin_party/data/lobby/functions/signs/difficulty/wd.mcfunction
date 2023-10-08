scoreboard players add wd_difficulty settings 1
execute if score wd_difficulty settings matches 3.. run scoreboard players set wd_difficulty settings 0
scoreboard players operation #difficulty tmp = wd_difficulty settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/difficulty/wd"}}'

function lobby:signs/difficulty/update_sign
function wd:difficulty_tellraw