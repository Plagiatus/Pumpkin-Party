#First Time 
tellraw @s[advancements={lobby:unlocked/piglin_brute=true},tag=!tmp_all_costumes,tag=!ul_piglin_brute] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Brute Costume\""}]
tellraw @s[advancements={lobby:unlocked/piglin_brute=true},tag=!tmp_all_costumes,tag=!ul_piglin_brute] ["",{"text":"Password: "},{"text":"\"NOTSOEASYTODISTRACT\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"NOTSOEASYTODISTRACT"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin_brute] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/piglin_brute=true}] add ul_piglin_brute
execute if entity @s[team=] run function lobby:costume/piglin_brute
tag @s add valid_password

advancement grant @s only lobby:unlocked/piglin_brute