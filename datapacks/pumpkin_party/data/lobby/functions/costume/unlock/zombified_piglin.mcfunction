#First Time 
tellraw @s[advancements={lobby:unlocked/zombified_piglin=true},tag=!tmp_all_costumes,tag=!ul_zombified_piglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombified Piglin Costume\""}]
tellraw @s[advancements={lobby:unlocked/zombified_piglin=true},tag=!tmp_all_costumes,tag=!ul_zombified_piglin] ["",{"text":"Password: "},{"text":"\"SPOILEDBACON\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SPOILEDBACON"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombified_piglin] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/zombified_piglin=true}] add ul_zombified_piglin
execute if entity @s[team=] run function lobby:costume/zombified_piglin
tag @s add valid_password

advancement grant @s only lobby:unlocked/zombified_piglin