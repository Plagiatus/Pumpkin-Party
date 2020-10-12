execute as @e[tag=bc_cauldron] run data modify entity @s ArmorItems[3].tag.recipes set value [0,0,0,0]

scoreboard players set $max tmp 10
function pp:util/get_random
scoreboard players add $random tmp 1
execute as @e[tag=bc_cauldron] store result entity @s ArmorItems[3].tag.recipes[0] int 1 run scoreboard players get $random tmp

scoreboard players set $max tmp 10
function pp:util/get_random
scoreboard players add $random tmp 1
execute as @e[tag=bc_cauldron] store result entity @s ArmorItems[3].tag.recipes[1] int 1 run scoreboard players get $random tmp

scoreboard players set $max tmp 10
function pp:util/get_random
scoreboard players add $random tmp 1
execute as @e[tag=bc_cauldron] store result entity @s ArmorItems[3].tag.recipes[2] int 1 run scoreboard players get $random tmp

scoreboard players set $max tmp 10
function pp:util/get_random
scoreboard players add $random tmp 1
execute as @e[tag=bc_cauldron] store result entity @s ArmorItems[3].tag.recipes[3] int 1 run scoreboard players get $random tmp

# execute as @e[tag=bc_cauldron] run data modify entity @s ArmorItems[3].tag.recipes set value [-1,1,2,3,4,5,6,7,8,9,10]
execute as @e[tag=bc_cauldron] run function bc:recipe/select_next
execute as @e[tag=bc_cauldron] at @s run function bc:recipe/display/update