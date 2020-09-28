#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_black] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Black Horse Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_black] run function lobby:costume/already_unlocked
function lobby:costume/horse_black
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/horse_black