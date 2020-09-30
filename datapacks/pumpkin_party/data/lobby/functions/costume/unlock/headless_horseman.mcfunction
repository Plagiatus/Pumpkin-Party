#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_headless_horseman] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Headless Horseman Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_headless_horseman] run function lobby:costume/already_unlocked
function lobby:costume/headless_horseman
tag @s add valid_password

advancement revoke @s only lobby:unlocked/headless_horseman