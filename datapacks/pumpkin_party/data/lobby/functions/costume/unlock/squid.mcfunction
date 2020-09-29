#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_squid] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Squid Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_squid] run function lobby:costume/already_unlocked
function lobby:costume/squid
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/squid