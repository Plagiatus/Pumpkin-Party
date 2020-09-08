tag @s remove sg_deactivating
tag @s add sg_stasis

scoreboard players set $max tmp 400
function pp:util/get_random
scoreboard players operation @s timer = $random tmp
scoreboard players add @s timer 100