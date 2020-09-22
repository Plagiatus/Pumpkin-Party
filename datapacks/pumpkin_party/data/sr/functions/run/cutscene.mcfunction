scoreboard players add #sr_cutscene sr_time 1
execute if score #sr_cutscene sr_time matches 1 run tp @e[tag=sr_spider] -462 64 -525 -90 0

execute if score #sr_cutscene sr_time matches 40 run tellraw @a [{"translate": "chat.type.text","with": [{"selector": "@a[limit=1,team=sr_play,sort=random]"},{"text": "There is a GIANT SPIDER!!"}]}]
execute if score #sr_cutscene sr_time matches 40..95 run data merge entity @e[tag=sr_spider,limit=1] {Motion:[0.1d,0.0d,0.0d]}
execute if score #sr_cutscene sr_time matches 110 run tellraw @a [{"translate": "chat.type.text","with": [{"selector": "@a[limit=1,team=sr_play,sort=random]"},{"text": "Oh no, she noticed us!"}]}]
execute if score #sr_cutscene sr_time matches 110..140 as @e[tag=sr_spider,limit=1] at @s run tp @s ~ ~ ~ ~-3 ~
execute if score #sr_cutscene sr_time matches 140 run title @a title [{"text": "RUN!","color": "dark_red"}]
execute if score #sr_cutscene sr_time matches 140 run fill -452 63 -541 -452 63 -536 stone_slab
execute if score #sr_cutscene sr_time matches 140 run fill -452 64 -541 -452 64 -536 air
execute if score #sr_cutscene sr_time matches 140 run fill -452 70 -541 -452 69 -536 air
execute if score #sr_cutscene sr_time matches 145..210 run data merge entity @e[tag=sr_spider,limit=1] {Motion:[0.0d,0.0d,-0.2d]}
execute if score #sr_cutscene sr_time matches 145..200 at @e[tag=sr_spider,limit=1] run fill ~ ~ ~ ~ ~1 ~-2 air
execute if score #sr_cutscene sr_time matches 145..200 at @e[tag=sr_spider,limit=1] run fill ~ ~-1 ~ ~ ~-1 ~-2 stone
execute if score #sr_cutscene sr_time matches 200..230 as @e[tag=sr_spider,limit=1] at @s run tp @s ~ ~ ~ ~3 ~
execute if score #sr_cutscene sr_time matches 231 as @e[tag=sr_spider,limit=1] at @s run summon cave_spider ~2 ~2.8 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90F,21F],Tags:["sr_spider_spider"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000000,ShowParticles:0b}]}
execute if score #sr_cutscene sr_time matches 230..260 as @a[x=-465,y=60,z=-545,dx=13,dy=8,dz=12,tag=!sr_caught] run function sr:run/caught
execute if score sr_difficulty settings matches 0 if score #sr_cutscene sr_time matches 261 run scoreboard players set #sr_phase points 3
execute if score sr_difficulty settings matches 1 if score #sr_cutscene sr_time matches 251 run scoreboard players set #sr_phase points 3
execute if score sr_difficulty settings matches 2 if score #sr_cutscene sr_time matches 231 run scoreboard players set #sr_phase points 3