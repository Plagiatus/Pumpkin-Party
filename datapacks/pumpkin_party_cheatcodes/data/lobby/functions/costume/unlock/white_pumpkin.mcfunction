#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_white_pumpkin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Pumpkin Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_white_pumpkin] run function lobby:costume/already_unlocked
function lobby:costume/white_pumpkin
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/white_pumpkin