#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_drowned] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Drowned Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_drowned] run function lobby:costume/already_unlocked
function lobby:costume/drowned
tag @s add valid_password

advancement revoke @s only lobby:unlocked/drowned