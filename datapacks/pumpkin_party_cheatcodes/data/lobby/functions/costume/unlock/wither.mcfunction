#ul stands for "unlocked"
tellraw @s[tag=!ul_wither] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Costume\""}]
execute as @s[tag=ul_wither] run function lobby:costume/already_unlocked
tag @s add ul_wither
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/wither