# reset sign
function sg:reset_sign

# scores
scoreboard players reset * sg_points_tmp
scoreboard players reset * sg_points
scoreboard players set @a sg_points 0
scoreboard objectives setdisplay sidebar sg_points

# distribute players
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -998.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1001.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -995.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1004.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -992.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1007.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -989.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1010.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -986.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1013.0 60 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -983.0 60 -1006 facing -999 62 -1034
tellraw @a[x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] [{"text": "I'm sorry, but this minigame is limited to 11 players. You seem to be more than 11 people.","color": "red"}]

# timers
scoreboard players set #sg_phase points 2
scoreboard players set $ticks timer 2400

# give everyone equipment
give @a minecraft:bow{HideFlags:5,Unbreakable:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
item replace entity @a inventory.0 with minecraft:arrow

# summon targets
execute store result score #players tmp if entity @a
function sg:spawn/row_one
function sg:spawn/row_two
function sg:spawn/row_three
function sg:spawn/row_four
function sg:spawn/row_five
function sg:spawn/row_six
function sg:spawn/extras

# calculate avrg respawn time in ticks
# goal: about 1 per player per second coming off of cooldown.
# P: amt Players, T: amt Targets, t: avg time until respawn in ticks.
# max = (T * t) / P
execute store result score #amt_targets sg_points if entity @e[tag=sg_as]
execute store result score #amt_players sg_points if entity @a
scoreboard players set #t sg_points 20
scoreboard players set #max_avrg sg_points 100
scoreboard players operation #max_avrg sg_points *= #amt_targets sg_points
scoreboard players operation #max_avrg sg_points *= #t sg_points
scoreboard players operation #max_avrg sg_points /= #amt_players sg_points
scoreboard players operation #max_avrg sg_points /= 100 const
tellraw @a {"score":{"name": "#max_avrg", "objective": "sg_points"}}

execute as @e[tag=sg_new] run function sg:spawn/one/choose_direction
execute as @e[tag=sg_new] run function sg:spawn/one/choose_speed
execute as @e[tag=sg_new] run function sg:targets/stasis
# scoreboard players remove @e[tag=sg_new] timer 100

tag @e[tag=sg_new] remove sg_new

kill @e[tag=sg_magma_cube]

# reset title times
title @a times 0 20 0

# advancements
advancement grant @a only sg:minigame_play
advancement revoke @a only sg:hit/1
advancement revoke @a only sg:hit/2
advancement revoke @a only sg:hit/3
advancement revoke @a only sg:hit/5
advancement revoke @a only sg:hit/neg1
advancement revoke @a only sg:hit/neg3

# team
team join sg_play @a
team leave @a[x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19]

# global things to do
function pp:all_games/start