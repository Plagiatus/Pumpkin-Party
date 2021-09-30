
gamerule doMobLoot false
gamerule doTileDrops false

# distribute points to winners and announce them
function bc:end/handle_points

# remove items
clear @a #bc:ingredients
clear @a #bc:important

# deactivate main loop
scoreboard players set #bc_phase points 0

# team
team empty bc_play

fill 551 85 -491 554 85 -488 minecraft:black_stained_glass

schedule function bc:clear_again 5s

# all games
schedule function pp:all_games/end 5s