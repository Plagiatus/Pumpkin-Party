# timer 
scoreboard players remove $ticks timer 1
function pp:util/display_timer
execute if score $ticks timer matches 200 run tellraw @a [{"text": "10 seconds to go!","color": "dark_red"}]

# make arrows piercing
execute as @e[type=arrow,tag=!piercing] run data merge entity @s {PierceLevel:100,Tags:["piercing"]}
# remove arrows in ground
kill @e[type=arrow,nbt={inGround:1b}]

# handle armorstands
execute as @e[type=armor_stand,tag=sg_as] at @s run function sg:targets/handle

# remove useless slimes
execute as @e[type=slime,tag=!sg_slime] at @s run tp @s ~ -100 ~

# take care of players getting points
execute as @a[tag=sg_hit] run function sg:show_points

# check gameover
execute if score $ticks timer matches 0 run function sg:end

# let players pick up their thrown out items again instantly
execute as @e[type=item,tag=!pickup] run data merge entity @s {PickupDelay:0,Tags:["pickup"]}

# previously left players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sg:player/too_late_join