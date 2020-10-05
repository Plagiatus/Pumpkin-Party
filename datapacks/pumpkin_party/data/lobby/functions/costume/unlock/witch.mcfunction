#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_witch] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Witch Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_witch] ["",{"text":"Password: "},{"text":"\"HERMIONEGRANGER\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"HERMIONEGRANGER"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_witch] run function lobby:costume/already_unlocked
tag @s add ul_witch
execute if entity @s[team=] run function lobby:costume/witch
tag @s add valid_password

advancement grant @s only lobby:unlocked/witch