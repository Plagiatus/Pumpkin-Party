#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_mule] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Mule Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_mule] run function lobby:costume/already_unlocked
function lobby:costume/mule
tag @s add valid_password

advancement revoke @s only lobby:unlocked/mule