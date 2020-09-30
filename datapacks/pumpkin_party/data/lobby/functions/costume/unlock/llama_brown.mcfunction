#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_brown] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Llama Brown Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_brown] run function lobby:costume/already_unlocked
function lobby:costume/llama_brown
tag @s add valid_password

advancement revoke @s only lobby:unlocked/llama_brown