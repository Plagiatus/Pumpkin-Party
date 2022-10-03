#First Time 
tellraw @s[advancements={lobby:unlocked/ravager=true},tag=!tmp_all_costumes,tag=!ul_ravager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Ravager Costume\""}]
tellraw @s[advancements={lobby:unlocked/ravager=true},tag=!tmp_all_costumes,tag=!ul_ravager] ["",{"text":"Password: "},{"text":"\"WHATAWEIRDHORSE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHATAWEIRDHORSE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_ravager] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/ravager=true}] add ul_ravager
execute if entity @s[team=] run function lobby:costume/ravager
tag @s add valid_password

advancement grant @s only lobby:unlocked/ravager