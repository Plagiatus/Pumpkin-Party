data modify storage pp:party gamestmp set from storage pp:party games
execute store result score #tmp tmp run data get storage pp:party games

scoreboard players operation $max tmp = #tmp tmp
function pp:util/get_random
scoreboard players operation #rand tmp = $random tmp
execute if score #rand tmp matches 1.. run function pp:party/remove_x