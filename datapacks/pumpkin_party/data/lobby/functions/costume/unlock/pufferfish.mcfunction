#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pufferfish] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Pufferfish Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pufferfish] ["",{"text":"Password: "},{"text":"\"PRAISETHEPUFFERFISH!\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"PRAISETHEPUFFERFISH!"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_pufferfish] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/pufferfish=true}] add ul_pufferfish
execute if entity @s[team=] run function lobby:costume/pufferfish
tag @s add valid_password

advancement grant @s only lobby:unlocked/pufferfish