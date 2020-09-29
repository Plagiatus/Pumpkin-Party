#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_white_decorated] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Llama Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_white_decorated] run function lobby:costume/already_unlocked
function lobby:costume/llama_white_decorated
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/llama_white_decorated