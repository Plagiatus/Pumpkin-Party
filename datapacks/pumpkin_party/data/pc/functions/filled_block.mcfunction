scoreboard players add @s pc_carved_block 1
advancement revoke @s only pc:filled_block
execute if score pc_difficulty settings matches 0..1 at @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=pc_occupied] run fill ~ ~1 ~ ~8 ~1 ~8 air replace smooth_red_sandstone
execute if score pc_difficulty settings matches 2 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s if blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all run function pc:next_template