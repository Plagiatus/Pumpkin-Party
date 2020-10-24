#ul stands for "unlocked"
#First time
tellraw @s[tag=!all_costumes] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"All costumes"}]
execute as @s[tag=all_costumes] run function lobby:costume/already_unlocked

tag @s add tmp_all_costumes
tag @s[advancements={lobby:unlocked/root=true}] add all_costumes
advancement grant @s[tag=!all_costumes] from lobby:unlocked/root

tag @s remove tmp_all_costumes
tag @s add valid_password