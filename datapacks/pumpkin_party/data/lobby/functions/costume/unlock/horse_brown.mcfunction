#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_brown] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Brown Horse Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_brown] run function lobby:costume/already_unlocked
function lobby:costume/horse_brown
tag @s add valid_password

advancement revoke @s only lobby:unlocked/horse_brown