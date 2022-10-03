#First Time 
tellraw @s[advancements={lobby:unlocked/shulker=true},tag=!tmp_all_costumes,tag=!ul_shulker] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Shulker Costume\""}]
tellraw @s[advancements={lobby:unlocked/shulker=true},tag=!tmp_all_costumes,tag=!ul_shulker] ["",{"text":"Password: "},{"text":"\"GREATVIEWFROMUPHERE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"GREATVIEWFROMUPHERE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_shulker] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/shulker=true}] add ul_shulker
execute if entity @s[team=] run function lobby:costume/shulker
tag @s add valid_password

advancement grant @s only lobby:unlocked/shulker