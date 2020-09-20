
#TODO take care of sr_spiderwall (activate on player close, move along the wall and destroy blocks for spiders). don't forget to set the redstone block at the repeating commandblock.
#TODO take care of sr_lava_jump (give players levitation and speed?)

execute store result score #spiderX sr_distance run data get entity @e[tag=sr_spider,limit=1] Pos[0] 10
execute as @a[team=sr_play] run function sr:run/display_actionbar

# make sure spider doesn't fall.
execute at @e[tag=sr_spider] run fill ~ ~-1 ~ ~3 ~-1 ~-1 stone
# destroy tunnel around it
execute at @e[tag=sr_spider] run fill ~2 ~ ~3 ~2 ~4 ~-4 air
# make spider move
execute as @e[tag=sr_spider] store result entity @s Motion[0] double 0.01 run scoreboard players get #speed sr_distance

# advancements
execute as @a if score @s sr_tunnel >= #halfparts sr_distance run advancement grant @s only sr:half_way