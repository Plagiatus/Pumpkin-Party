# set highest points to the player who got into the trasure room first
scoreboard players set @a sr_distance 0
scoreboard players set #rank tmp 1
scoreboard players set #min sr_time 10000000
scoreboard players operation #min sr_time < @a[team=sr_play,tag=sr_end,scores={sr_distance=0}] sr_time

execute if score sr_difficulty settings matches 0 run scoreboard players operation #max sr_time = #normal sr_time
execute if score sr_difficulty settings matches 1 run scoreboard players operation #max sr_time = #hard sr_time
execute if score sr_difficulty settings matches 2 run scoreboard players operation #max sr_time = #nightmare sr_time

scoreboard players operation #min sr_time -= #max sr_time

#
scoreboard players operation #bonusPointsEnd tmp = #maxPoints const
scoreboard players operation #maxPointsCaught tmp = #bonusPointsEnd tmp

scoreboard players operation #maxPointsCaught tmp *= 7 const
scoreboard players operation #maxPointsCaught tmp /= 10 const
scoreboard players operation #bonusPointsEnd tmp -= #maxPointsCaught tmp



tellraw @a [{"text": "\nSpider Run Results","color":"#ff6600"},"\n======================"]
execute if entity @a[team=sr_play,tag=sr_end] run function sr:run/end/made_it
execute if entity @a[team=sr_play,tag=sr_caught] run function sr:run/end/not_made_it
execute as @a run scoreboard players operation @s points += @s sr_distance