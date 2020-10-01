#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_evoker] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Evoker Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_evoker] ["",{"text":"Password: "},{"text":"\"WOLOLOOO\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WOLOLOOO"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_evoker] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/evoker
tag @s add valid_password

tag @s add ul_evoker
advancement grant @s only lobby:unlocked/evoker