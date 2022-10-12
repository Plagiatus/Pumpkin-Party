#First Time 
tellraw @s[advancements={lobby:unlocked/magma_cube=true},tag=!tmp_all_costumes,tag=!ul_magma_cube] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Magma Cube Costume\""}]
tellraw @s[advancements={lobby:unlocked/magma_cube=true},tag=!tmp_all_costumes,tag=!ul_magma_cube] ["",{"text":"Password: "},{"text":"\"FROGCANDY\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"FROGCANDY"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_magma_cube] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/magma_cube=true}] add ul_magma_cube
execute if entity @s[team=] run function lobby:costume/magma_cube
tag @s add valid_password

advancement grant @s only lobby:unlocked/magma_cube