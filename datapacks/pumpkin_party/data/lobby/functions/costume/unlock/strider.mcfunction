#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_strider] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Strider Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_strider] ["",{"text":"Password: "},{"text":"\"IMSOCOLDWITHOUTLAVA\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"IMSOCOLDWITHOUTLAVA"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_strider] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/strider
tag @s add valid_password

tag @s add ul_strider
advancement grant @s only lobby:unlocked/strider