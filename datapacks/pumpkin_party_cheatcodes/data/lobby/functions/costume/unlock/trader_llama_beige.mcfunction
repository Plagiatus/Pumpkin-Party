#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_trader_llama_beige] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Beige Trader Llama Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_trader_llama_beige] run function lobby:costume/already_unlocked
function lobby:costume/trader_llama_beige
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/trader_llama_beige