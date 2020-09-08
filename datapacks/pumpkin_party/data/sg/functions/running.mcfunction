# timer 
scoreboard players remove $ticks timer 1
function pp:utils/display_timer

# make arrows piercing
execute as @e[type=arrow,tag=!piercing] run data merge entity @s {PierceLevel:100,Tags:["piercing"]}

# handle armorstands
execute as @e[type=armor_stand,tag=sg_as] at @s run function sg:targets/handle

# remove useless slimes
execute as @e[type=slime,tag=!sg_slime] at @s run tp @s ~ -100 ~

# take care of players getting points
title @a[tag=sg_hit] title [{"score": {"name": "@s","objective": "sg_points_tmp"}}]
execute as @a[tag=sg_hit] run scoreboard players operation @s sg_points += @s sg_points_tmp
scoreboard players set @a[tag=sg_hit] sg_points_tmp 0
tag @a[tag=sg_hit] remove sg_hit

# check gameover
execute if score $ticks timer matches 0 run function sg:end

# let players pick up their thrown out items again instantly
execute as @e[type=item,tag=!pickup] run data merge entity @s {PickupDelay:0,Tags:["pickup"]}