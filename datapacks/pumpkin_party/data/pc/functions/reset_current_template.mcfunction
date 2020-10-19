#run as player at the area_effect_cloud
execute if score pc_difficulty settings matches 0..1 run function pc:reset_hotbar
execute if score pc_difficulty settings matches 0..1 run fill ~ ~ ~ ~8 ~ ~8 smooth_red_sandstone replace air
execute if score pc_difficulty settings matches 0..1 run advancement grant @s only pc:big_mistakes
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s unless blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all positioned ~-1 ~1 ~4 run playsound entity.villager.no master @p
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s unless blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all positioned ~5 ~1 ~4 run playsound block.stone.place master @p
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s unless blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all run advancement grant @s only pc:big_mistakes
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s if blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all run function pc:next_template
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s unless blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all run fill ~ ~ ~ ~8 ~ ~8 smooth_red_sandstone replace air