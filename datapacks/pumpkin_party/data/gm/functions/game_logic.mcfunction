# Gameplay loop
# @calledBy: gm:main
# @calls: gm:zombie_hit_detection, gm:lose, gm:win
# @author: dragonmaster95

#1 second grace period (zombie can't catch anyone the first second they spawn)
execute as @e[type=zombie] unless score @s timer matches 21.. run scoreboard players add @s timer 1

#Catch mechanic
tag @e[type=zombie,tag=ze_new] remove ze_new
execute at @e[type=zombie,tag=ze,scores={timer=21}] positioned ~ ~1 ~ as @a[distance=..1.25,gamemode=adventure] run function gm:zombie_hit_detection
execute as @e[type=zombie,tag=ze] at @s if block ~ ~ ~ gravel run particle block gravel ~ 62.5 ~ 0.3 0 0.3 0 3 force @a


#Force player to spectate their zombie
execute as @e[type=zombie,scores={ze_id=1..}] at @a[gamemode=spectator,team=ze_play] if score @s ze_id = @p ze_id run spectate @s @p
execute as @a[gamemode=spectator,team=ze_play] run title @a actionbar ["",{"text": "You got turned into a zombie and are now spectating it.","color":"gold"}]

execute as @a[team=ze_play,scores={left_game=1..}] run function gm:left_game

#Detect if a player left and summon a new zombie
execute store result score #ze_playerCount tmp if entity @a[team=ze_play]
execute if score #ze_playerCount tmp < #ze_playerCount const as @e[limit=1,type=armor_stand,name=ze_center,sort=random] at @s positioned ~ ~1 ~ run function gm:summon_zombie
scoreboard players operation #ze_playerCount const = #ze_playerCount tmp

#Timer
time add 4
scoreboard players remove #ze_timer timer 1
scoreboard players remove @a timer 1

#Detect if game has ended
execute store result score #ze_playerCount tmp if entity @a[gamemode=!spectator,team=ze_play]
execute if score #ze_playerCount tmp matches 0 run function gm:lose
execute if score #ze_timer timer matches ..0 if score #ze_playerCount tmp matches 1.. run function gm:win