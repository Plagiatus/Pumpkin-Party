execute as @e[type=armor_stand,tag=!picture,distance=4..5] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=armor_stand,tag=!picture,distance=..4] run data merge entity @s {CustomNameVisible:1b}