#First Time 
tellraw @s[advancements={lobby:unlocked/villager_snowy_cartogropher=true},tag=!tmp_all_costumes,tag=!ul_villager_snowy_cartographer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Cartographer Villager Costume\""}]
tellraw @s[advancements={lobby:unlocked/villager_snowy_cartogropher=true},tag=!tmp_all_costumes,tag=!ul_villager_snowy_cartographer] ["",{"text":"Password: "},{"text":"\"ARTICEXPLORER\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"ARTICEXPLORER"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_snowy_cartographer] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_snowy_cartogropher=true}] add ul_villager_snowy_cartographer
execute if entity @s[team=] run function lobby:costume/villager_snowy_cartographer
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_snowy_cartogropher