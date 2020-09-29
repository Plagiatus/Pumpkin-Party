#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_stray] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Stray Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_stray] run function lobby:costume/already_unlocked
function lobby:costume/stray
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/stray