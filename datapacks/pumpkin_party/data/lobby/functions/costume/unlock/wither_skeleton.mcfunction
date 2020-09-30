#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither_skeleton] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Skeleton Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wither_skeleton] run function lobby:costume/already_unlocked
function lobby:costume/wither_skeleton
tag @s add valid_password

advancement revoke @s only lobby:unlocked/wither_skeleton