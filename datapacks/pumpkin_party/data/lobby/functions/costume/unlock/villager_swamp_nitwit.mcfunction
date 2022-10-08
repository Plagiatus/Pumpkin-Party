#First Time 
tellraw @s[advancements={lobby:unlocked/villager_swamp_nitwit=true},tag=!tmp_all_costumes,tag=!ul_villager_swamp_nitwit] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Swamp Villager Costume\""}]
tellraw @s[advancements={lobby:unlocked/villager_swamp_nitwit=true},tag=!tmp_all_costumes,tag=!ul_villager_swamp_nitwit] ["",{"text":"Password: "},{"text":"\"NOVILLAGE?NOWORK!\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"NOVILLAGE?NOWORK!"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_swamp_nitwit] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_swamp_nitwit=true}] add ul_villager_swamp_nitwit
execute if entity @s[team=] run function lobby:costume/villager_swamp_nitwit
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_swamp_nitwit