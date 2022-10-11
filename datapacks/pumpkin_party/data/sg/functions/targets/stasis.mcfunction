tag @s remove sg_deactivating
tag @s add sg_stasis
tag @s remove costume_failed
item replace entity @s armor.head with air
data merge entity @s {Pose:{Head:[270f,0f,0f]}}

scoreboard players operation $max tmp = #max_avrg sg_points
function pp:util/get_random
scoreboard players operation @s timer = $random tmp
# scoreboard players add @s timer 100
# execute if score sg_difficulty settings matches 1.. run scoreboard players add @s timer 150
# execute if score sg_difficulty settings matches 2.. run scoreboard players add @s timer 150