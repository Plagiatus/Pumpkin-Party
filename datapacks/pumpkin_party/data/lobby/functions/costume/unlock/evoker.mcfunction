#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_evoker] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Evoker Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_evoker] run function lobby:costume/already_unlocked
function lobby:costume/evoker
tag @s add valid_password

advancement revoke @s only lobby:unlocked/evoker