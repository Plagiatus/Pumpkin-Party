scoreboard players add wd_in_party settings 1
execute if score wd_in_party settings matches 2.. run scoreboard players set wd_in_party settings 0
scoreboard players operation #in_party tmp = wd_in_party settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/partyselection/wd"}}'

function lobby:signs/partyselection/update_sign