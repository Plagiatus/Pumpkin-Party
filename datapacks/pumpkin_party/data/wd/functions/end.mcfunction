
function wd:calculate_points
scoreboard players set #wd_phase points 0

team empty wd_play
fill -495 80 0 -495 200 0 air

function pp:all_games/end