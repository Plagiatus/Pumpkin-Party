# timer 
scoreboard players remove $ticks timer 1
function pp:util/display_timer
execute if score $ticks timer matches 200 run tellraw @a [{"text": "10 seconds to go!","color": "dark_red"}]

# make arrows piercing
execute as @e[type=arrow,tag=!piercing] run data merge entity @s {PierceLevel:100,Tags:["piercing"]}
# remove arrows in ground
kill @e[type=arrow,nbt={inGround:1b}]

# handle armorstands
execute as @e[type=minecraft:armor_stand,tag=sg_as] at @s run function sg:targets/handle

# remove useless magma_cubes
execute as @e[type=magma_cube,tag=!sg_magma_cube] at @s run tp @s ~ -100 ~

# take care of players getting points
execute as @a[tag=sg_hit,tag=sg_next_tick] run function sg:show_points
tag @a[tag=sg_hit] add sg_next_tick

# check gameover
execute if score $ticks timer matches 0 run function sg:end

# let players pick up their thrown out items again instantly
execute as @e[type=item,tag=!pickup] run data merge entity @s {PickupDelay:0,Tags:["pickup"]}

# previously left players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sg:player/too_late_join

# prevent killing of other players
effect give @a resistance 1 10 true

# background cleanup
kill @e[type=experience_orb]