#First Time 
tellraw @s[advancements={lobby:unlocked/piglin=true},tag=!tmp_all_costumes,tag=!ul_piglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Costume\""}]
tellraw @s[advancements={lobby:unlocked/piglin=true},tag=!tmp_all_costumes,tag=!ul_piglin] ["",{"text":"Password: "},{"text":"\"HUNGRYFORGOLD\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"HUNGRYFORGOLD"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/piglin=true}] add ul_piglin
execute if entity @s[team=] run function lobby:costume/piglin
tag @s add valid_password

advancement grant @s only lobby:unlocked/piglin