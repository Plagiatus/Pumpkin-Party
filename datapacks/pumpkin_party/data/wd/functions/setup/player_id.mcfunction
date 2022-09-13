scoreboard players add #id wd_id 1
scoreboard players operation @s wd_id = #id wd_id

summon marker -495 80 0 {Tags:["new_wd_marker", "wd_marker"]}
execute as @e[type=marker,tag=new_wd_marker] run scoreboard players operation @s wd_id = #id wd_id
tag @e[tag=new_wd_marker] remove new_wd_marker
