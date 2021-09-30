#First Time 
tellraw @s[advancements={lobby:unlocked/evocation_fang=true},tag=!tmp_all_costumes,tag=!ul_evocation_fang] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Evocation Fang Costume\""}]
tellraw @s[advancements={lobby:unlocked/evocation_fang=true},tag=!tmp_all_costumes,tag=!ul_evocation_fang] ["",{"text":"Password: "},{"text":"\"HEADINBEARTRAP\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"HEADINBEARTRAP"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_evocation_fang] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/evocation_fang=true}] add ul_evocation_fang
execute if entity @s[team=] run function lobby:costume/evocation_fang
tag @s add valid_password

advancement grant @s only lobby:unlocked/evocation_fang
