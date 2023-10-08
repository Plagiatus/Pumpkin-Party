data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Difficulty","color":"black"}'

execute if score #difficulty tmp matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"normal","color":"dark_green"}'
execute if score #difficulty tmp matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"hard","color":"red"}'
execute if score #difficulty tmp matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"nightmare","color":"dark_red"}'