#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_husk] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Husk Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_husk] run function lobby:costume/already_unlocked
function lobby:costume/husk
tag @s add valid_password

advancement revoke @s only lobby:unlocked/husk