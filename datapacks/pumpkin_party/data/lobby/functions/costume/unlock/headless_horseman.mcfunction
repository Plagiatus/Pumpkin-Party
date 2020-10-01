#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_headless_horseman] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Headless Horseman Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_headless_horseman] ["",{"text":"Password: "},{"text":"\"PUMPKINHEAD\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"PUMPKINHEAD"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_headless_horseman] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/headless_horseman
tag @s add valid_password

tag @s add ul_headless_horseman
advancement grant @s only lobby:unlocked/headless_horseman