scoreboard players add @s pc_carved_block 1
advancement revoke @s only pc:filled_block
execute at @e[type=area_effect_cloud,limit=1,sort=nearest,tag=pc_occupied] run fill ~ ~1 ~ ~8 ~1 ~8 air replace smooth_red_sandstone