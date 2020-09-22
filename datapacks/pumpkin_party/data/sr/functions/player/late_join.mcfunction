tp @s -457 64 -539 -90 0
gamemode adventure
function pp:all_games/reset_player
tag @s remove sr_caught
tag @s remove sr_end
team join sr_play

scoreboard players set @s sr_time 0
scoreboard players set @s sr_tunnel 0