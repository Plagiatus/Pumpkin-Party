#First Time 
tellraw @s[advancements={lobby:unlocked/guardian=true},tag=!tmp_all_costumes,tag=!ul_guardian] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Guardian Costume\""}]
tellraw @s[advancements={lobby:unlocked/guardian=true},tag=!tmp_all_costumes,tag=!ul_guardian] ["",{"text":"Password: "},{"text":"\"MEANLOOK\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"MEANLOOK"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_guardian] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/guardian=true}] add ul_guardian
execute if entity @s[team=] run function lobby:costume/guardian
tag @s add valid_password

advancement grant @s only lobby:unlocked/guardian