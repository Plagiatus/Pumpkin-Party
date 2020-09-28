#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_illusioner] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Illusioner Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_illusioner] run function lobby:costume/already_unlocked
function lobby:costume/illusioner
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/illusioner