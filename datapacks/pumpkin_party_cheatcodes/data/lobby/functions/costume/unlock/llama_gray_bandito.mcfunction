#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_gray_bandito] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gray Llama (El Bandito) Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_gray_bandito] run function lobby:costume/already_unlocked
function lobby:costume/llama_gray_bandito
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/llama_gray_bandito