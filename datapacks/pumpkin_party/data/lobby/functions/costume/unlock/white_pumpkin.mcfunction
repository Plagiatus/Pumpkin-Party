#First Time 
tellraw @s[advancements={lobby:unlocked/white_pumpkin=true},tag=!tmp_all_costumes,tag=!ul_white_pumpkin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Pumpkin Costume\""}]
tellraw @s[advancements={lobby:unlocked/white_pumpkin=true},tag=!tmp_all_costumes,tag=!ul_white_pumpkin] ["",{"text":"Password: "},{"text":"\"BOOBYTRAPPINGBOOBYTRAPS\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BOOBYTRAPPINGBOOBYTRAPS"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_white_pumpkin] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/white_pumpkin=true}] add ul_white_pumpkin
execute if entity @s[team=] run function lobby:costume/white_pumpkin
tag @s add valid_password

advancement grant @s only lobby:unlocked/white_pumpkin