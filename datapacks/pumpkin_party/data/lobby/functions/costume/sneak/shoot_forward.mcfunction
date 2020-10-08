scoreboard players add @s sound_delay 1

#Fix wrongly rotated skull
execute if score @s sound_delay matches 1 run data merge entity @s {Air:1s}
execute if score @s sound_delay matches 1 run tp @s ^ ^ ^0.4 ~-5 ~
execute if score @s sound_delay matches 2 run tp @s ^ ^ ^0.4 ~5 ~
execute if score @s sound_delay matches 3 run tp @s ^ ^ ^0.4 ~-5 ~
execute if score @s sound_delay matches 4 run tp @s ^ ^ ^0.4 ~5 ~
execute if score @s sound_delay matches 5 run tp @s ^ ^ ^0.4 ~-5 ~
execute if score @s sound_delay matches 6 run tp @s ^ ^ ^0.4 ~5 ~
execute if score @s sound_delay matches 7 run tp @s ^ ^ ^0.4 ~-5 ~
execute if score @s sound_delay matches 8 run tp @s ^ ^ ^0.4 ~5 ~
execute if score @s sound_delay matches 9.. run tp @s ^ ^ ^0.5 ~ ~-0.01

execute unless block ^ ^0.5 ^ air run function lobby:costume/sneak/kill_projectile
execute unless block ^ ^ ^0.5 air run function lobby:costume/sneak/kill_projectile
execute unless entity @p[distance=0.5..20] run function lobby:costume/sneak/kill_projectile