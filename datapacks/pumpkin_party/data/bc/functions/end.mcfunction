
gamerule doMobLoot false
gamerule doTileDrops false

# distribute points to winners and announce them
function bc:end/handle_points

# remove entities
clear @a #bc:ingredients
clear @a #bc:important

# deactivate main loop
scoreboard players set #bc_phase points 0

# team
team empty bc_play

# all games
function pp:all_games/end