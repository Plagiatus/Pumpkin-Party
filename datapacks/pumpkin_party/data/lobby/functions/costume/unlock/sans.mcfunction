#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_sans] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Sans Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_sans] ["",{"text":"Password: "},{"text":"\"COMICSANS!\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"COMICSANS!"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_sans] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/sans=true}] add ul_sans
execute if entity @s[team=] run function lobby:costume/sans
tag @s add valid_password

advancement grant @s only lobby:unlocked/sans