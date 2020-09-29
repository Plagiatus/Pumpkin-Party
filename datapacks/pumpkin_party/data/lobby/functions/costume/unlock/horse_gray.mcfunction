#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_gray] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gray Horse Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_gray] run function lobby:costume/already_unlocked
function lobby:costume/horse_gray
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/horse_gray