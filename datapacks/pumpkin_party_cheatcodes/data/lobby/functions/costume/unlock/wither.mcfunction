#ul stands for "unlocked"
tellraw @s[tag=!ul_wither] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Costume\""}]
tellraw @s[tag=ul_wither] ["",{"text":"You already used this cheat"}]
tag @s add ul_wither
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/wither