#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pillager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Pillager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_pillager] run function lobby:costume/already_unlocked
function lobby:costume/pillager
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/pillager