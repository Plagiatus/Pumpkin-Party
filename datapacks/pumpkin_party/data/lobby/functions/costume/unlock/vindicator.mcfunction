#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_vindicator] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Vindicator Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_vindicator] run function lobby:costume/already_unlocked
function lobby:costume/vindicator
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/vindicator