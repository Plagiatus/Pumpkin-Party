#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_vindicator] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Vindicator Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_vindicator] ["",{"text":"Password: "},{"text":"\"JOHNNY\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"JOHNNY"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_vindicator] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/vindicator=true}] add ul_vindicator
execute if entity @s[team=] run function lobby:costume/vindicator
tag @s add valid_password

advancement grant @s only lobby:unlocked/vindicator