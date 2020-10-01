#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_spider] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Spider Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_spider] ["",{"text":"Password: "},{"text":"\"EATING3INYOURSLEEP\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"EATING3INYOURSLEEP"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_spider] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/spider
tag @s add valid_password

tag @s add ul_spider
advancement grant @s only lobby:unlocked/spider