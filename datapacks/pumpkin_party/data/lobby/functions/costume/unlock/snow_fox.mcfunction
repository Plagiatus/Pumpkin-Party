#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_snow_fox] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Snow Fox Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_snow_fox] ["",{"text":"Password: "},{"text":"\"BOOPDASNOOT\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BOOPDASNOOT"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_snow_fox] run function lobby:costume/already_unlocked
tag @s add ul_snow_fox
execute if entity @s[team=] run function lobby:costume/snow_fox
tag @s add valid_password

advancement grant @s only lobby:unlocked/snow_fox