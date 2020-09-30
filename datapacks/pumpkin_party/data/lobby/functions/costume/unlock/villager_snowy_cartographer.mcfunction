#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_snowy_cartographer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Cartographer Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_snowy_cartographer] run function lobby:costume/already_unlocked
function lobby:costume/villager_snowy_cartographer
tag @s add valid_password

advancement revoke @s only lobby:unlocked/villager_snowy_cartographer