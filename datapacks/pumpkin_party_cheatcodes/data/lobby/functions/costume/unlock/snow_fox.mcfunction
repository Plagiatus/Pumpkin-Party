#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_snow_fox] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Snow Fox Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_snow_fox] run function lobby:costume/already_unlocked
function lobby:costume/snow_fox
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/snow_fox