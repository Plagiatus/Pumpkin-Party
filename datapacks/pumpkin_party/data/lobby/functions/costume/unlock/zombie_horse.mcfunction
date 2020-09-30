#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_horse] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombie Horse Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombie_horse] run function lobby:costume/already_unlocked
function lobby:costume/zombie_horse
tag @s add valid_password

advancement revoke @s only lobby:unlocked/zombie_horse