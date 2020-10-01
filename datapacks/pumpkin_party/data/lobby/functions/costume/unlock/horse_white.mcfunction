#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_white] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Horse Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_white] ["",{"text":"Password: "},{"text":"\"PRINCECHARMING\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"PRINCECHARMING"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_white] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/horse_white
tag @s add valid_password

tag @s add ul_horse_white
advancement grant @s only lobby:unlocked/horse_white