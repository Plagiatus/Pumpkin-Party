execute store result score #spiderX sr_distance run data get entity @e[tag=sr_spider,limit=1] Pos[0] 10
scoreboard players add #spiderX sr_distance 40
execute as @a[team=sr_play] run function sr:run/display_actionbar

# make sure spider doesn't fall.
execute at @e[tag=sr_spider] run fill ~ ~-1 ~ ~3 ~-1 ~-1 stone
execute at @e[tag=sr_spider] run fill ~ ~ ~ ~3 ~2 ~-1 air
# destroy tunnel around it
execute at @e[tag=sr_spider] run fill ~4 ~1 ~1 ~4 ~4 ~-2 air destroy
execute at @e[tag=sr_spider] run fill ~3.5 ~ ~3 ~3 ~1 ~-4 air destroy
# make spider move
execute as @e[tag=sr_spider] store result entity @s Motion[0] double 0.01 run scoreboard players get #speed sr_distance
# make caught players spectate in correct position
execute at @e[tag=sr_spider] run tp @e[tag=sr_spider_spider] ~2 ~2.8 ~ -90 21
execute as @e[tag=sr_spider_spider] store result entity @s Motion[0] double 0.01 run scoreboard players get #speed sr_distance
execute as @a[tag=sr_caught] run spectate @e[tag=sr_spider_spider,limit=1]

# advancements
execute as @a if score @s sr_tunnel >= #halfparts sr_distance run advancement grant @s only sr:half_way

# timer to count players survival/goal time
scoreboard players add @a[tag=!sr_end,tag=!sr_caught] sr_time 1

# give players levitation from lava jump
execute at @e[tag=sr_lava_jump] as @a[dx=0] run function sr:run/lava_jump

# activate the spider wall
execute as @e[tag=sr_spiderwall,tag=!sr_active] at @s positioned ~-3 ~-2 ~-8 if entity @a[limit=1,dx=3,dy=6,dz=8] positioned ~3 ~2 ~8 run function sr:run/spider_tunnel/activate
execute as @e[tag=sr_spiderwall,tag=sr_active] at @s run function sr:run/spider_tunnel/active

# "catch" players
execute at @e[tag=sr_spider] positioned ~ ~-5 ~-7 as @a[dx=3,dy=10,dz=15,tag=!sr_caught] run function sr:run/caught