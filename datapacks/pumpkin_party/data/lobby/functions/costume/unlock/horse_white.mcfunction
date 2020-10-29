#First Time 
tellraw @s[advancements={lobby:unlocked/horse_white=true},tag=!tmp_all_costumes,tag=!ul_horse_white] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Horse Costume\""}]
tellraw @s[advancements={lobby:unlocked/horse_white=true},tag=!tmp_all_costumes,tag=!ul_horse_white] ["",{"text":"Password: "},{"text":"\"PRINCECHARMING\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"PRINCECHARMING"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_white] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/horse_white=true}] add ul_horse_white
tag @s add valid_password

advancement grant @s only lobby:unlocked/horse_white