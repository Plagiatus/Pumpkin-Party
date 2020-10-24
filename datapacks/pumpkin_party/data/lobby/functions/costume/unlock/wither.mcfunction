#First Time
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither] ["",{"text":"Password: "},{"text":"\"THREEHEADSAREBETTERTHANONE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THREEHEADSAREBETTERTHANONE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wither] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/wither=true}] add ul_wither
execute if entity @s[team=] run function lobby:costume/wither
tag @s add valid_password

advancement grant @s only lobby:unlocked/wither