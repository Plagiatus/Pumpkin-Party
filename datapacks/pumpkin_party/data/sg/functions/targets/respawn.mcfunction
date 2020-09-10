execute as @s[tag=sg_cat] run function sg:spawn/one/cat
execute as @s[tag=sg_ghost] run function sg:spawn/one/ghost
execute as @s[tag=sg_golden_ghost] run function sg:spawn/one/golden_ghost
execute as @s[tag=sg_illager] run function sg:spawn/one/illager
execute as @s[tag=sg_skeleton] run function sg:spawn/one/skeleton
execute as @s[tag=sg_spider] run function sg:spawn/one/spider
execute as @s[tag=sg_villager] run function sg:spawn/one/villager
execute as @s[tag=sg_witch] run function sg:spawn/one/witch
execute as @s[tag=sg_zombie] run function sg:spawn/one/zombie

scoreboard players operation @e[tag=sg_new] sg_speed = @s sg_speed
execute if entity @s[tag=sg_left] run tag @e[tag=sg_new] add sg_left
execute if entity @s[tag=sg_right] run tag @e[tag=sg_new] add sg_right
tag @e[tag=sg_new] remove sg_new

kill @s