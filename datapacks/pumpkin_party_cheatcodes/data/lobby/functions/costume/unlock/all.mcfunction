#ul stands for "unlocked"
#First time
tellraw @s[tag=!all_costumes] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"All costumes"}]
advancement grant @s[tag=!all_costumes] from lobby:lab/unlock/all

#Every other time
tellraw @s[tag=all_costumes] ["",{"text":"You already used this cheat"}]
advancement revoke @s only lobby:lab/unlock/all

tag @s add valid_password
tag @s add all_costumes
