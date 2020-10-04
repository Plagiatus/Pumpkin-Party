#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_taiga_armorer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Armorer Villager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_taiga_armorer] ["",{"text":"Password: "},{"text":"\"DEFENSEISTHEBESTOFFENSE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"DEFENSEISTHEBESTOFFENSE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_taiga_armorer] run function lobby:costume/already_unlocked
tag @s add ul_villager_taiga_armorer
execute if entity @s[team=] run function lobby:costume/villager_taiga_armorer
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_taiga_armorer