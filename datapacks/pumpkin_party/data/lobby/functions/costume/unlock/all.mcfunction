#ul stands for "unlocked"
tag @s add valid_password
tag @s add all_costumes
tellraw @s ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"All costumes"}]

advancement grant @s from lobby:lab/unlock/all