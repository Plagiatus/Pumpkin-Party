scoreboard players add gm_in_party settings 1
execute if score gm_in_party settings matches 2.. run scoreboard players set gm_in_party settings 0
scoreboard players operation #in_party tmp = gm_in_party settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/partyselection/gm"}}'}

function lobby:signs/partyselection/update_sign