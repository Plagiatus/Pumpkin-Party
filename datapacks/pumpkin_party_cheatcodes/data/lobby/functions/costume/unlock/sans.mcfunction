#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_sans] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Sans Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_sans] run function lobby:costume/already_unlocked
function lobby:costume/sans
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/sans