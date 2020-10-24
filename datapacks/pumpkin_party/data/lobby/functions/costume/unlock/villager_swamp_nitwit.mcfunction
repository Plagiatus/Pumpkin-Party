#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_swamp] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Swamp Villager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_swamp] ["",{"text":"Password: "},{"text":"\"NOVILLAGE?NOWORK!\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"NOVILLAGE?NOWORK!"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_swamp] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_swamp_nitwit=true}] add ul_villager_swamp
execute if entity @s[team=] run function lobby:costume/villager_swamp_nitwit
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_swamp_nitwit