#First Time 
tellraw @s[advancements={lobby:unlocked/zoglin=true},tag=!tmp_all_costumes,tag=!ul_zoglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zoglin Costume\""}]
tellraw @s[advancements={lobby:unlocked/zoglin=true},tag=!tmp_all_costumes,tag=!ul_zoglin] ["",{"text":"Password: "},{"text":"\"ANGRYATEVERYTHING\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"ANGRYATEVERYTHING"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zoglin] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/zoglin=true}] add ul_zoglin
execute if entity @s[team=] run function lobby:costume/zoglin
tag @s add valid_password

advancement grant @s only lobby:unlocked/zoglin