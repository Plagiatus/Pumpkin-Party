scoreboard players add bc_in_party settings 1
execute if score bc_in_party settings matches 2.. run scoreboard players set bc_in_party settings 0
scoreboard players operation #in_party tmp = bc_in_party settings

data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/partyselection/bc"}}'

function lobby:signs/partyselection/update_sign