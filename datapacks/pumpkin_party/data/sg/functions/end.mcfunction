# distribute points to winners and announce them
function sg:handle_points

# give advancements
advancement grant @a[scores={sg_points=40..}] only sg:wilhelm_tell
advancement grant @a[scores={sg_points=..0}] only sg:different_game

# remove armorstands and slimes
tp @e[type=armor_stand,tag=sg_as] ~ ~-100 ~
kill @e[type=armor_stand,tag=sg_as]

# clear players
clear @a
gamemode adventure @a

# move players back to mansion
tp @a 400 69 500 90 -5

# deactivate main loop
scoreboard players set $sg_phase points 0

#set correct scoreboard
scoreboard objectives setdisplay sidebar points