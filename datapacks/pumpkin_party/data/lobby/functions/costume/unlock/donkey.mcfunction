#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_donkey] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Donkey Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_donkey] ["",{"text":"Password: "},{"text":"\"AREWETHEREYET?\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"AREWETHEREYET?"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_donkey] run function lobby:costume/already_unlocked
tag @s add ul_donkey
execute if entity @s[team=] run function lobby:costume/donkey
tag @s add valid_password

advancement grant @s only lobby:unlocked/donkey
