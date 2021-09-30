#First Time 
tellraw @s[advancements={lobby:unlocked/strider=true},tag=!tmp_all_costumes,tag=!ul_strider] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Strider Costume\""}]
tellraw @s[advancements={lobby:unlocked/strider=true},tag=!tmp_all_costumes,tag=!ul_strider] ["",{"text":"Password: "},{"text":"\"IMSOCOLDWITHOUTLAVA\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"IMSOCOLDWITHOUTLAVA"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_strider] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/strider=true}] add ul_strider
execute if entity @s[team=] run function lobby:costume/strider
tag @s add valid_password

advancement grant @s only lobby:unlocked/strider