kill @e[tag=sr_spider]
kill @e[tag=sr_spider_spider]
kill @e[tag=sr_gate]
function sr:run/end/calculate_points
scoreboard players set #sr_phase points 0
tag @a remove sr_caught
tag @a remove sr_end
tag @a remove sr_in_tunnel
team empty sr_play

function pp:all_games/end