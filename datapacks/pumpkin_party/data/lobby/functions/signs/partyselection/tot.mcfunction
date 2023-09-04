scoreboard players add tot_in_party settings 1
execute if score tot_in_party settings matches 2.. run scoreboard players set tot_in_party settings 0
scoreboard players operation #in_party tmp = tot_in_party settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/partyselection/tot"}}'

function lobby:signs/partyselection/update_sign