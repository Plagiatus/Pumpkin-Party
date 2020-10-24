#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_jungle_fletcher] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Fletcher Villager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_jungle_fletcher] ["",{"text":"Password: "},{"text":"\"GRAVELANDCHICKEN\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"GRAVELANDCHICKEN"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_jungle_fletcher] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/villager_jungle_fletcher=true}] add ul_villager_jungle_fletcher
execute if entity @s[team=] run function lobby:costume/villager_jungle_fletcher
tag @s add valid_password

advancement grant @s only lobby:unlocked/villager_jungle_fletcher