#Catch mechanic
tag @e[type=zombie,tag=ze_new] remove ze_new
execute at @e[type=zombie,tag=ze] as @a[tag=!ze_caught,distance=..1,gamemode=adventure] run function gm:zombie_hit_detection
#execute at @e[type=zombie,tag=ze] run tag @a[tag=!ze_caught,distance=..1,gamemode=adventure] add ze_caught
#execute at @e[type=zombie,tag=ze] at @a[distance=..1,gamemode=adventure] run function gm:summon_zombie
#execute at @e[type=zombie,tag=ze] run gamemode spectator @a[distance=..1,gamemode=adventure]
#execute at @e[type=zombie,tag=ze_new] as @p[tag=ze_caught] run loot replace entity @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] armor.head loot gm:player_head


#Getting Caught
#execute as @a[tag=ze_caught] at @s run scoreboard players add @a[tag=!ze_caught,gamemode=adventure] ze_points 1
#tellraw @a[tag=ze_caught] {"text":"You were zombiefied!","color":"gray"}
#advancement grant @a[tag=ze_caught] only pumpkinparty:gma_new_zombie


execute as @e[type=zombie,tag=ze] at @s if block ~ ~ ~ gravel run particle block gravel ~ 62.5 ~ 0.3 0 0.3 0 3 force @a
#execute as @e[type=zombie] at @s run teleport @a[gamemode=spectator] ~ ~1 ~
#execute if score #ze_timer timer matches 1100.. run advancement grant @a[tag=ze_caught] only pumpkinparty:gmslowest_of_them_all
#tag @a[tag=ze_caught] remove ze_caught
execute as @e[type=zombie,scores={ze_id=1..}] at @a[gamemode=spectator,team=ze_play] if score @s ze_id = @p ze_id run spectate @s @p

time add 4
scoreboard players remove #ze_timer timer 1

execute store result score #ze_playerCount tmp if entity @a[gamemode=!spectator,team=ze_play]
execute if score #ze_playerCount tmp matches 0 run function gm:lose
execute if score #ze_timer timer matches ..0 if score #ze_playerCount tmp matches 1.. run function gm:win