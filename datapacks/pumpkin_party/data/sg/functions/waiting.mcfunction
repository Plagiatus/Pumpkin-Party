# timer 
scoreboard players remove $ticks timer 1
function pp:utils/display_timer

execute if score $ticks timer matches ..0 run function sg:actual_start