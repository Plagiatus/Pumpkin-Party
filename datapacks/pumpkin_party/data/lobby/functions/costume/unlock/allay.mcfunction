#First Time 
tellraw @s[advancements={lobby:unlocked/allay=true},tag=!tmp_all_costumes,tag=!ul_allay] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Allay Costume\""}]
tellraw @s[advancements={lobby:unlocked/allay=true},tag=!tmp_all_costumes,tag=!ul_allay] ["",{"text":"Password: "},{"text":"\"MUSICALENTHUSIAST\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"MUSICALENTHUSIAST"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_allay] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/allay=true}] add ul_allay
execute if entity @s[team=] run function lobby:costume/allay
tag @s add valid_password

advancement grant @s only lobby:unlocked/allay