#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_savanna_weaponsmith] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Weaponsmith Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_savanna_weaponsmith] run function lobby:costume/already_unlocked
function lobby:costume/villager_savanna_weaponsmith
tag @s add valid_password

advancement revoke @s only lobby:unlocked/villager_savanna_weaponsmith