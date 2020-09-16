# timer 
scoreboard players remove $ticks timer 1
function pp:util/display_timer

execute if score $ticks timer matches ..0 run function sg:actual_start

# previously left players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sg:player/late_join