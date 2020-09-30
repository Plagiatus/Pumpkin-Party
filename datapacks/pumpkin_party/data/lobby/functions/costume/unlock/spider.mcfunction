#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_spider] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Spider Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_spider] run function lobby:costume/already_unlocked
function lobby:costume/spider
tag @s add valid_password

advancement revoke @s only lobby:unlocked/spider