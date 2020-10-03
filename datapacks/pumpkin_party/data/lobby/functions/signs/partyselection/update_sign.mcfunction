execute if score #in_party tmp matches 1 run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"In Party Rotation","color":"black"}',Text3:'{"text":"✔","color":"dark_green"}'}
execute if score #in_party tmp matches 0 run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"In Party Rotation","color":"black"}',Text3:'{"text":"❌","color":"red"}'}

scoreboard players set #in_party tmp 0
scoreboard players operation #in_party tmp += bc_in_party settings
scoreboard players operation #in_party tmp += gm_in_party settings
scoreboard players operation #in_party tmp += pc_in_party settings
scoreboard players operation #in_party tmp += sg_in_party settings
scoreboard players operation #in_party tmp += sr_in_party settings
scoreboard players operation #in_party tmp += tot_in_party settings

execute if score #in_party tmp matches 2.. run data merge block 383 70 498 {Text1:'{"text":"Pumpkin Party","color":"black","font":"octobercrow"}',Text2:'""',Text3:'[{"text":"(","color":"dark_gray"},{"score":{"name":"#in_party","objective":"tmp"}}," minigames)"]',Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:start/party"}}]'}
execute if score #in_party tmp matches ..1 run data merge block 383 70 498 {Text1:'{"text":"Pumpkin Party","color":"black","font":"octobercrow"}',Text2:'""',Text3:'[{"text":"(not enough","color":"dark_gray"}]',Text4:'[{"text":"minigames)","color":"dark_gray"}]'}
execute if score #in_party tmp matches 6 run data merge block 383 70 498 {Text1:'{"text":"Pumpkin Party","color":"black","font":"octobercrow"}',Text2:'""',Text3:'{"text":"(all minigames)","color":"dark_gray"}',Text4:'{"text":"","clickEvent": {"action": "run_command","value": "function lobby:start/party"}}]'}


# /function lobby:start/party
# ,"clickEvent": {"action": "run_command","value": "function lobby:start/party"}}