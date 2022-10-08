scoreboard players add #cutscene wd_timer 1

gamemode spectator @a[gamemode=!spectator]
execute as @a run spectate @e[tag=wd_camera,limit=1] @s

execute if score #cutscene wd_timer matches 0 run function wd:cutscene/start

execute if score #cutscene wd_timer matches 5 run function wd:cutscene/play_shriek
execute if score #cutscene wd_timer matches 95 run function wd:cutscene/start_warden_animation

execute if score #cutscene wd_timer matches 300 run fill -995 67 1022 -1005 67 1022 air replace minecraft:tinted_glass

# execute if score #cutscene wd_timer matches 5..95 run effect give @a slowness 2 4 true

execute if score #cutscene wd_timer matches 379 run function wd:cutscene/end