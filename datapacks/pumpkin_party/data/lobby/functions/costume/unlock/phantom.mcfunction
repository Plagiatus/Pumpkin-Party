#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_phantom] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Phantom Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_phantom] ["",{"text":"Password: "},{"text":"\"ITSATTRACTEDTOINSOMNIA\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"ITSATTRACTEDTOINSOMNIA"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_phantom] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/phantom=true}] add ul_phantom
execute if entity @s[team=] run function lobby:costume/phantom
tag @s add valid_password

advancement grant @s only lobby:unlocked/phantom