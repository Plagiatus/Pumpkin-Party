scoreboard players add sg_in_party settings 1
execute if score sg_in_party settings matches 2.. run scoreboard players set sg_in_party settings 0
scoreboard players operation #in_party tmp = sg_in_party settings

data merge block ~ ~ ~ {Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:signs/partyselection/sg"}}'}

function lobby:signs/partyselection/update_sign