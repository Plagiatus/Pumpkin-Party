# make sure spider doesn't fall.
fill ~ ~-1 ~ ~3 ~-1 ~-1 stone
fill ~ ~ ~ ~3 ~2 ~-1 air
# destroy tunnel around it
fill ~4 ~1 ~1 ~4 ~4 ~-2 air destroy
fill ~3.5 ~ ~3 ~3 ~1 ~-4 air destroy
# make spider move
execute store result entity @s Motion[0] double 0.01 run scoreboard players get #speed sr_distance

# attempt to fix the spectators glitch in spiderrun because https://bugs.mojang.com/browse/MC-148993
scoreboard players add @a[tag=sr_caught] sr_anti_unload 1
execute as @a[tag=sr_caught,scores={sr_anti_unload=200..}] run spectate
scoreboard players set @a[tag=sr_caught,scores={sr_anti_unload=200..}] sr_anti_unload 0

# make caught players spectate in correct position
tp @e[tag=sr_spider_spider] ~2 ~2.8 ~ -90 21
execute as @e[tag=sr_spider_spider] store result entity @s Motion[0] double 0.01 run scoreboard players get #speed sr_distance
execute as @a[tag=sr_caught] run spectate @e[tag=sr_spider_spider,limit=1]
effect give @a[tag=sr_caught] night_vision 1 0 true