# timer 
scoreboard players remove $ticks timer 1
function pp:util/display_timer

execute if score $ticks timer matches ..0 run function sg:actual_start

# previously left players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sg:player/late_join

effect give @a weakness 1 10 true

# golden particles
execute at @e[name=GGeist] run particle minecraft:crit ~ ~2 ~ 0.3 0.3 0.1 0 1 normal