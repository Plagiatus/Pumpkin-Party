#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_jack_o_lantern] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Jack o'Lantern Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_jack_o_lantern] run function lobby:costume/already_unlocked
function lobby:costume/jack_o_lantern
tag @s add valid_password

advancement revoke @s only lobby:unlocked/jack_o_lantern