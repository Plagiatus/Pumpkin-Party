#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_villager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombie Villager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_villager] ["",{"text":"Password: "},{"text":"\"WITCHDOCTOR\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WITCHDOCTOR"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombie_villager] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/zombie_villager=true}] add ul_zombie_villager
execute if entity @s[team=] run function lobby:costume/zombie_villager
tag @s add valid_password

advancement grant @s only lobby:unlocked/zombie_villager