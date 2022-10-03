#First Time 
tellraw @s[advancements={lobby:unlocked/vex=true},tag=!tmp_all_costumes,tag=!ul_vex] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Vex Costume\""}]
tellraw @s[advancements={lobby:unlocked/vex=true},tag=!tmp_all_costumes,tag=!ul_vex] ["",{"text":"Password: "},{"text":"\"FLYINGMENACE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"FLYINGMENACE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_vex] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/vex=true}] add ul_vex
execute if entity @s[team=] run function lobby:costume/vex
tag @s add valid_password

advancement grant @s only lobby:unlocked/vex