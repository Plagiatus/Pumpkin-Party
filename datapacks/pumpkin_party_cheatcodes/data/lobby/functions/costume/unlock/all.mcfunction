#ul stands for "unlocked"
#First time
tellraw @s[tag=!all_costumes] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"All costumes"}]
advancement grant @s[tag=!all_costumes] from lobby:lab/unlock/all

#Every other time
execute as @s[tag=all_costumes] run function lobby:costume/already_unlocked
advancement revoke @s only lobby:lab/unlock/all

tag @s add valid_password
tag @s add all_costumes
