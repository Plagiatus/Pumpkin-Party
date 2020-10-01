#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_drowned] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Drowned Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_drowned] ["",{"text":"Password: "},{"text":"\"INEVERLEARNEDHOWTOSWIM\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"INEVERLEARNEDHOWTOSWIM"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_drowned] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/drowned
tag @s add valid_password

tag @s add ul_drowned
advancement grant @s only lobby:unlocked/drowned
