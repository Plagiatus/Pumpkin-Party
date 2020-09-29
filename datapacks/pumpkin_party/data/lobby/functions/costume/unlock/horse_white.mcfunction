#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_white] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Horse Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_white] run function lobby:costume/already_unlocked
function lobby:costume/horse_white
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/horse_white