#First Time 
tellraw @s[advancements={lobby:unlocked/villager_plains_farmer=true},tag=!tmp_all_costumes,tag=!ul_villager_plains_farmer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Farmer Villager Costume\""}]
tellraw @s[advancements={lobby:unlocked/villager_plains_farmer=true},tag=!tmp_all_costumes,tag=!ul_villager_plains_farmer] ["",{"text":"Password: "},{"text":"\"PEPPERIDGEFARMREMEMBERS\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"PEPPERIDGEFARMREMEMBERS"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_plains_farmer] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_plains_farmer=true}] add ul_villager_plains_farmer
execute if entity @s[team=] if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=ul_villager_plains_farmer] run function lobby:costume/villager_plains_farmer
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_plains_farmer