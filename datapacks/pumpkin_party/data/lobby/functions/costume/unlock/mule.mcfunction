#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_mule] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Mule Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_mule] ["",{"text":"Password: "},{"text":"\"WHIMOFNATURE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHIMOFNATURE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_mule] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/mule=true}] add ul_mule
execute if entity @s[team=] run function lobby:costume/mule
tag @s add valid_password

advancement grant @s only lobby:unlocked/mule