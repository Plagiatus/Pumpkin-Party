# distribute points to winners and announce them
function sg:points/handle_points

# give advancements
advancement grant @a[team=sg_play,scores={sg_points=40..}] only sg:wilhelm_tell
advancement grant @a[team=sg_play,scores={sg_points=..0}] only sg:different_game

# remove armorstands and slimes
tp @e[type=minecraft:armor_stand,tag=sg_as] ~ ~-100 ~
kill @e[type=minecraft:armor_stand,tag=sg_as]

# clear players
clear @a

# deactivate main loop
scoreboard players set #sg_phase points 0

# team
team empty sg_play

# all games
function pp:all_games/end