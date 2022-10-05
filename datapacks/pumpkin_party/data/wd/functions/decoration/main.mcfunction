# scoreboard players add #decoration wd_timer 1

# scoreboard players operation #tmp tmp = #decoration wd_timer
# scoreboard players operation #tmp tmp %= 10 const
# execute if score #tmp tmp matches 0 run function wd:decoration/sensor_blink
# execute if score #tmp tmp matches 0 run function wd:decoration/glass_color_swap

function wd:decoration/sensor_blink
function wd:decoration/glass_color_swap