scoreboard players add #cutscene wd_timer 1

gamemode spectator @a[gamemode=!spectator]
execute as @a run spectate @e[tag=wd_camera,limit=1] @s

execute if score #cutscene wd_timer matches 0 run function wd:cutscene/start

execute if score #cutscene wd_timer matches 5 run function wd:cutscene/play_shriek
execute if score #cutscene wd_timer matches 95 run function wd:cutscene/start_warden_animation
execute if score #cutscene wd_timer matches 227 run playsound entity.warden.sniff hostile @a -1000 69 1016
execute if score #cutscene wd_timer matches 295 run playsound entity.warden.roar hostile @a -1000 69 1016

execute if score #cutscene wd_timer matches 300 run fill -995 67 1022 -1005 67 1022 air replace minecraft:tinted_glass

execute if score #cutscene wd_timer matches 5..375 run effect give @a darkness 5 4 true
execute if score #cutscene wd_timer matches 5..286 as @e[type=minecraft:armor_stand,tag=wd_camera] at @s run tp @s ^-.06 ^ ^ ~-1.1 ~-0.1
execute if score #cutscene wd_timer matches 287..360 as @e[type=minecraft:armor_stand,tag=wd_camera] at @s run tp @s ^ ^ ^-.025 ~ ~

execute if score #cutscene wd_timer matches 360 run function wd:cutscene/end