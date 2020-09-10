# TODO: end the game

# distribute points to winners

# give advancements
advancement grant @a[scores={sg_points=40..}] only sg:wilhelm_tell
advancement grant @a[scores={sg_points=..0}] only sg:different_game

# remove armorstands and slimes
tp @e[type=armor_stand,tag=sg_as] ~ ~-100 ~
kill @e[type=armor_stand,tag=sg_as]

# clear players
clear @a

# move players back to mansion

# deactivate main loop
scoreboard players set $sg_phase points 0