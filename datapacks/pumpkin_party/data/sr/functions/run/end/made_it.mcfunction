scoreboard players set #min tmp 100000000
scoreboard players operation #min tmp < @a[team=sr_play,tag=sr_end,scores={sr_distance=0}] sr_time
execute as @a[team=sr_play,tag=sr_end,scores={sr_distance=0}] if score @s sr_time = #min tmp run tag @s add sr_lead

execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance = #max sr_time
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance -= @s sr_time
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance *= 100 const
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance /= #min sr_time
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance *= #bonusPointsEnd tmp
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance /= 100 const
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance *= -1 const
scoreboard players add @a[tag=sr_lead,scores={sr_distance=..0}] sr_distance 1
scoreboard players operation @a[tag=sr_lead] sr_distance += #maxPointsCaught tmp


execute as @a[tag=sr_lead] run function sr:run/end/display_made_it

# next player
tag @a remove sr_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=sr_play,tag=sr_end,scores={sr_distance=0}] run function sr:run/end/made_it