#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_gold_ghost] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gold Ghost Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_gold_ghost] run function lobby:costume/already_unlocked
function lobby:costume/gold_ghost
tag @s add valid_password

advancement revoke @s only lobby:unlocked/gold_ghost