# reset sign
function sg:reset_sign

# distribute players
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -998.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1001.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -995.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1004.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -992.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1007.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -989.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1010.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -986.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -1013.0 59.5 -1006 facing -999 62 -1034
tp @a[limit=1,sort=random,x=-1004,y=66,z=-1006,dx=10,dy=7,dz=19] -983.0 59.5 -1006 facing -999 62 -1034

# timers
scoreboard players set $sg_phase points 2
scoreboard players set $ticks timer 2400

# give everyone equipment
give @a minecraft:bow{HideFlags:5,Unbreakable:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
replaceitem entity @a inventory.0 minecraft:arrow

# summon targets
function sg:spawn/row_one
function sg:spawn/row_two
function sg:spawn/row_three
function sg:spawn/row_four
function sg:spawn/extras

execute as @e[tag=sg_new] run function sg:spawn/one/choose_direction
execute as @e[tag=sg_new] run function sg:spawn/one/choose_speed
execute as @e[tag=sg_new] run function sg:targets/stasis
scoreboard players remove @e[tag=sg_new] timer 100

tag @e[tag=sg_new] remove sg_new

kill @e[tag=sg_slime]

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

# scores
scoreboard players set @a sg_points 0