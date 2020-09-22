scoreboard players set #max tmp -1000
scoreboard players operation #max tmp > @a[team=sr_play,tag=sr_caught,scores={sr_distance=0}] sr_time
execute as @a[team=sr_play,tag=sr_caught,scores={sr_distance=0}] if score @s sr_time = #max tmp run tag @s add sr_lead

execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance = @s sr_time
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance *= 100 const
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance /= #max sr_time
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance *= #maxPointsCaught tmp
execute as @a[tag=sr_lead] run scoreboard players operation @s sr_distance /= 100 const
scoreboard players add @a[tag=sr_lead,scores={sr_distance=..0}] sr_distance 1
scoreboard players set @a[tag=sr_lead,scores={sr_distance=70..}] sr_distance 70


execute as @a[tag=sr_lead] run function sr:run/end/display_not_made_it

# next player
tag @a remove sr_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=sr_play,tag=sr_caught,scores={sr_distance=0}] run function sr:run/end/not_made_it