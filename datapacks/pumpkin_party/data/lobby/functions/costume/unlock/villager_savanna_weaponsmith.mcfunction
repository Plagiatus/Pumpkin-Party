#First Time 
tellraw @s[advancements={lobby:unlocked/villager_savanna_weaponsmith=true},tag=!tmp_all_costumes,tag=!ul_villager_savanna_weaponsmith] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Weaponsmith Villager Costume\""}]
tellraw @s[advancements={lobby:unlocked/villager_savanna_weaponsmith=true},tag=!tmp_all_costumes,tag=!ul_villager_savanna_weaponsmith] ["",{"text":"Password: "},{"text":"\"WHEREISTHEBLACKSMITH?!?\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHEREISTHEBLACKSMITH?!?"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_savanna_weaponsmith] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_savanna_weaponsmith=true}] add ul_villager_savanna_weaponsmith
execute if entity @s[team=] run function lobby:costume/villager_savanna_weaponsmith
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_savanna_weaponsmith