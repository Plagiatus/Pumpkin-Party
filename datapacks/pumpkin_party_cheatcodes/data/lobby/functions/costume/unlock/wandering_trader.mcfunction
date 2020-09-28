#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wandering_trader] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wandering Trader Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wandering_trader] run function lobby:costume/already_unlocked
function lobby:costume/wandering_trader
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/wandering_trader