execute as @a if score @s wd_points = #wd_phase wd_phases run advancement grant @s only wd:perfect_game

scoreboard players set #wd_phase points 10
function wd:points/handle

schedule function wd:end 3s

# TODO figure out why this triggers twice