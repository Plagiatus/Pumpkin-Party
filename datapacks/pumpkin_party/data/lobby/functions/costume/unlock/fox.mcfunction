#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_fox] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Fox Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_fox] run function lobby:costume/already_unlocked
function lobby:costume/fox
tag @s add valid_password

advancement revoke @s only lobby:unlocked/fox