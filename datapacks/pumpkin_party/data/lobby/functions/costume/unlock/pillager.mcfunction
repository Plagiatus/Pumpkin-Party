#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pillager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Pillager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pillager] ["",{"text":"Password: "},{"text":"\"SOUNDTHEBELLS!\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SOUNDTHEBELLS!"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_pillager] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/pillager=true}] add ul_pillager
execute if entity @s[team=] run function lobby:costume/pillager
tag @s add valid_password

advancement grant @s only lobby:unlocked/pillager