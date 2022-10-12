#First Time 
tellraw @s[advancements={lobby:unlocked/turtle=true},tag=!tmp_all_costumes,tag=!ul_turtle] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Turtle Costume\""}]
tellraw @s[advancements={lobby:unlocked/turtle=true},tag=!tmp_all_costumes,tag=!ul_turtle] ["",{"text":"Password: "},{"text":"\"COWABUNGA\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"COWABUNGA"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_turtle] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/turtle=true}] add ul_turtle
execute if entity @s[team=] run function lobby:costume/turtle
tag @s add valid_password

advancement grant @s only lobby:unlocked/turtle