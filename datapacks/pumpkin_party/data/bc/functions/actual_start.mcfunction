gamemode adventure @a
scoreboard players set #bc_phase points 2

scoreboard players reset * bc_points
scoreboard players set @a bc_points 0
scoreboard players set @a bc_id 0
scoreboard objectives setdisplay sidebar bc_points

scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 1
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 2
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 3
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 4
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 5
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 6
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 7
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 8
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 9
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 10
scoreboard players set @a[limit=1,scores={bc_id=0}] bc_id 11

tp @a[limit=1,scores={bc_id=1}] @e[tag=bc_marker,scores={bc_id=1},limit=1]
tp @a[limit=1,scores={bc_id=2}] @e[tag=bc_marker,scores={bc_id=2},limit=1]
tp @a[limit=1,scores={bc_id=3}] @e[tag=bc_marker,scores={bc_id=3},limit=1]
tp @a[limit=1,scores={bc_id=4}] @e[tag=bc_marker,scores={bc_id=4},limit=1]
tp @a[limit=1,scores={bc_id=5}] @e[tag=bc_marker,scores={bc_id=5},limit=1]
tp @a[limit=1,scores={bc_id=6}] @e[tag=bc_marker,scores={bc_id=6},limit=1]
tp @a[limit=1,scores={bc_id=7}] @e[tag=bc_marker,scores={bc_id=7},limit=1]
tp @a[limit=1,scores={bc_id=8}] @e[tag=bc_marker,scores={bc_id=8},limit=1]
tp @a[limit=1,scores={bc_id=9}] @e[tag=bc_marker,scores={bc_id=9},limit=1]
tp @a[limit=1,scores={bc_id=10}] @e[tag=bc_marker,scores={bc_id=10},limit=1]
tp @a[limit=1,scores={bc_id=11}] @e[tag=bc_marker,scores={bc_id=11},limit=1]

team join bc_play @a[scores={bc_id=1..11}]
gamemode spectator @a[team=!bc_play]

execute as @a[team=bc_play] at @s run tp @s ~ ~ ~ facing 550 ~ -500
execute as @a[team=bc_play] at @s run spawnpoint @s ~ ~ ~

execute as @e[tag=bc_marker] at @s run scoreboard players operation @e[tag=bc_cauldron,limit=1,sort=nearest] bc_id = @s bc_id

# timer start
scoreboard players set $ticks timer 500000

# recipes
function bc:recipe/generate/first

# give players correct items
execute as @a run function bc:player/reset_inventory