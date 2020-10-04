#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_gray] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gray Horse Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_gray] ["",{"text":"Password: "},{"text":"\"RANOUTOFINK\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"RANOUTOFINK"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_gray] run function lobby:costume/already_unlocked
tag @s add ul_horse_gray
execute if entity @s[team=] run function lobby:costume/horse_gray
tag @s add valid_password

advancement grant @s only lobby:unlocked/horse_gray