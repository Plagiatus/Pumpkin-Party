execute as @e[type=minecraft:armor_stand,tag=!picture,distance=..5] at @s if entity @a[distance=..4] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=minecraft:armor_stand,tag=!picture] at @s unless entity @a[distance=..4] run data merge entity @s {CustomNameVisible:0b}
