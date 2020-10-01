tag @s remove sg_deactivating
tag @s add sg_stasis
tag @s remove costume_failed
replaceitem entity @s armor.head air
data merge entity @s {Pose:{Head:[270f,0f,0f]}}

scoreboard players set $max tmp 400
function pp:util/get_random
scoreboard players operation @s timer = $random tmp
scoreboard players add @s timer 100