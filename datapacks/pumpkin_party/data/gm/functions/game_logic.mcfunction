#Catch mechanic
tag @e[type=zombie,tag=ze_new] remove ze_new
execute at @e[type=zombie,tag=ze] positioned ~ ~1 ~ as @a[tag=!ze_caught,distance=..1.25,gamemode=adventure] run function gm:zombie_hit_detection
execute as @e[type=zombie,tag=ze] at @s if block ~ ~ ~ gravel run particle block gravel ~ 62.5 ~ 0.3 0 0.3 0 3 force @a
execute as @e[type=zombie,scores={ze_id=1..}] at @a[gamemode=spectator,team=ze_play] if score @s ze_id = @p ze_id run spectate @s @p

time add 4
scoreboard players remove #ze_timer timer 1

execute store result score #ze_playerCount tmp if entity @a[gamemode=!spectator,team=ze_play]
execute if score #ze_playerCount tmp matches 0 run function gm:lose
execute if score #ze_timer timer matches ..0 if score #ze_playerCount tmp matches 1.. run function gm:win