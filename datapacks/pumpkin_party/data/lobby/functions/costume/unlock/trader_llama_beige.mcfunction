#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_trader_llama_beige] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Beige Trader Llama Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_trader_llama_beige] ["",{"text":"Password: "},{"text":"\"INTERESTINGBODYGUARD\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"INTERESTINGBODYGUARD"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_trader_llama_beige] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/trader_llama_beige=true}] add ul_trader_llama_beige
execute if entity @s[team=] run function lobby:costume/trader_llama_beige
tag @s add valid_password

advancement grant @s only lobby:unlocked/trader_llama_beige