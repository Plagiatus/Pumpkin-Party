

#Timer
scoreboard players remove $ticks timer 1
function pp:util/display_timer

#Check if a test for the carved pumpkin is required
execute at @a[scores={pc_carved_block=1..}] if score pc_difficulty settings matches 0..1 as @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..15] at @s if blocks ~ ~ ~ ~8 ~ ~8 ~ ~-3 ~ all run function pc:next_template
scoreboard players set @a[team=pc_play] pc_carved_block 0

#End the game
execute if score $ticks timer matches 0 run function pc:end_game