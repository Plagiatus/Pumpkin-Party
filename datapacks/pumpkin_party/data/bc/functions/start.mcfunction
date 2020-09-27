tp @a 551 107 -498 -180 60
gamemode adventure @a
effect give @a invisibility 1 0 true
effect give @a weakness 1 0 true
gamerule doMobLoot true
gamerule doTileDrops true
tp @e[type=!giant,type=!armor_stand,type=!area_effect_cloud,x=505,y=50,z=-545,dx=90,dy=30,dz=90] 551 -10 -498
scoreboard players set #bc_phase points 1

schedule function bc:actual_start 10t

execute if score bc_difficulty settings matches ..0 run scoreboard players set bc_difficulty settings 0
execute if score bc_difficulty settings matches 2.. run scoreboard players set bc_difficulty settings 2
