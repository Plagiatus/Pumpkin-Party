execute store result score #spiderX sr_distance run data get entity @e[tag=sr_spider,limit=1] Pos[0] 10
scoreboard players add #spiderX sr_distance 40
execute as @a[team=sr_play] run function sr:run/display_actionbar

# move spider
execute as @e[tag=sr_spider] at @s run function sr:run/move_spider

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
execute at @e[tag=sr_spider] positioned ~ ~-5 ~-7 as @a[dx=3,dy=12,dz=15,tag=!sr_caught] run function sr:run/caught

# give strider advancement
execute as @a at @s if block ~ ~ ~ lava run advancement grant @s only sr:hot_feet

# players are so far away that the spider gets unloaded
execute unless entity @e[tag=sr_spider] run scoreboard players set #sr_phase points 6