#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wandering_trader] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wandering Trader Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wandering_trader] ["",{"text":"Password: "},{"text":"\"WHEREDIDYOUCOMEFROM\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHEREDIDYOUCOMEFROM"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wandering_trader] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/wandering_trader
tag @s add valid_password

tag @s add ul_wandering_trader
advancement grant @s only lobby:unlocked/wandering_trader