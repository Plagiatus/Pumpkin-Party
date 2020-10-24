#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_cave_spider] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Cave Spider Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_cave_spider] ["",{"text":"Password: "},{"text":"\"POISONOUSNUISANCE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"POISONOUSNUISANCE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_cave_spider] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/cave_spider=true}] add ul_cave_spider
execute if entity @s[team=] run function lobby:costume/cave_spider
tag @s add valid_password

advancement grant @s only lobby:unlocked/cave_spider