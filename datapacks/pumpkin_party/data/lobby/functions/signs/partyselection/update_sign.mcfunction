execute if score #in_party tmp matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"✔","color":"dark_green"}'
execute if score #in_party tmp matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"❌","color":"red"}'

scoreboard players set #in_party tmp 0
scoreboard players operation #in_party tmp += bc_in_party settings
scoreboard players operation #in_party tmp += gm_in_party settings
scoreboard players operation #in_party tmp += pc_in_party settings
scoreboard players operation #in_party tmp += sg_in_party settings
scoreboard players operation #in_party tmp += sr_in_party settings
scoreboard players operation #in_party tmp += tot_in_party settings
scoreboard players operation #in_party tmp += wd_in_party settings

execute if score #in_party tmp matches 2.. run data merge block 383 70 500 {is_waxed:1b,front_text:{messages:['{"text":"\\uEf12","color":"white"}','""','[{"text":"(","color":"dark_gray"},{"score":{"name":"#in_party","objective":"tmp"}}," minigames)"]','{"color":"black","text":"[click here]","clickEvent": {"action": "run_command","value": "function lobby:signs/minigame/party"}}]']}}
execute if score #in_party tmp matches ..1 run data merge block 383 70 500 {is_waxed:1b,front_text:{messages:['{"text":"\\uEf12","color":"white"}','""','[{"text":"(not enough","color":"dark_gray"}]','[{"text":"minigames)","color":"dark_gray"}]']}}
execute if score #in_party tmp matches 7 run data merge block 383 70 500 {is_waxed:1b,front_text:{messages:['{"text":"\\uEf12","color":"white"}','""','{"text":"(all minigames)","color":"dark_gray"}','{"color":"black","text":"[click here]","clickEvent": {"action": "run_command","value": "function lobby:signs/minigame/party"}}]']}}
