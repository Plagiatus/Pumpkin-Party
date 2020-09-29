#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_villager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombie Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombie_villager] run function lobby:costume/already_unlocked
function lobby:costume/zombie_villager
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/zombie_villager