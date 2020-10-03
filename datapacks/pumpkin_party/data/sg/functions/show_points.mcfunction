
execute as @s run title @s[scores={sg_points_tmp=..-1}] subtitle [{"score": {"name": "@s","objective": "sg_points_tmp"},"color": "red"}]
execute as @s run title @s[scores={sg_points_tmp=0}] subtitle [{"score": {"name": "@s","objective": "sg_points_tmp"},"color": "white"},"?"]
execute as @s run title @s[scores={sg_points_tmp=1..}] subtitle [{"color": "green","text": "+"},{"score": {"name": "@s","objective": "sg_points_tmp"}}]
execute as @s run title @s title [""]
execute as @s run scoreboard players operation @s sg_points += @s sg_points_tmp
advancement grant @s[scores={sg_points_tmp=10..}] only sg:bulls_eye
scoreboard players set @s sg_points_tmp 0
tag @s remove sg_hit
tag @s remove sg_next_tick