#First Time 
tellraw @s[advancements={lobby:unlocked/illusioner=true},tag=!tmp_all_costumes,tag=!ul_illusioner] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Illusioner Costume\""}]
tellraw @s[advancements={lobby:unlocked/illusioner=true},tag=!tmp_all_costumes,tag=!ul_illusioner] ["",{"text":"Password: "},{"text":"\"WASTEDPOTENTIAL\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WASTEDPOTENTIAL"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_illusioner] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/illusioner=true}] add ul_illusioner
execute if entity @s[team=] run function lobby:costume/illusioner
tag @s add valid_password

advancement grant @s only lobby:unlocked/illusioner