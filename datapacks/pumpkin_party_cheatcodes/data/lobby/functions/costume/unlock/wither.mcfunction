#First Time
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wither] run function lobby:costume/already_unlocked
function lobby:costume/wither
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/wither