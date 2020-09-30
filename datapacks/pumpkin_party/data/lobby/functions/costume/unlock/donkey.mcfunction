#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_donkey] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Donkey Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_donkey] run function lobby:costume/already_unlocked
function lobby:costume/donkey
tag @s add valid_password

advancement revoke @s only lobby:unlocked/donkey