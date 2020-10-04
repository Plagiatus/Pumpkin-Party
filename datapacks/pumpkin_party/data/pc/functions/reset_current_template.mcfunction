#run as player at the area_effect_cloud
execute if score pc_difficulty settings matches 0..1 run function pc:reset_hotbar
fill ~ ~ ~ ~8 ~ ~8 smooth_red_sandstone replace air