#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_husk] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Husk Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_husk] ["",{"text":"Password: "},{"text":"\"THEHOTTERZOMBIE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THEHOTTERZOMBIE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_husk] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/husk=true}] add ul_husk
execute if entity @s[team=] run function lobby:costume/husk
tag @s add valid_password

advancement grant @s only lobby:unlocked/husk