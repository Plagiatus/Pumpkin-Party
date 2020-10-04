#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_piglin_chan] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Chan Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_piglin_chan] ["",{"text":"Password: "},{"text":"\"OWOWHATSTHIS\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"OWOWHATSTHIS"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin_chan] run function lobby:costume/already_unlocked
tag @s add ul_piglin_chan
execute if entity @s[team=] run function lobby:costume/piglin_chan
tag @s add valid_password

advancement grant @s only lobby:unlocked/piglin_chan