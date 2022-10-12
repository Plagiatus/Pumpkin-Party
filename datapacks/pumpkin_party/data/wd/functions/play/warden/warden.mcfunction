scoreboard players add #wd_count wd_timer 1
execute if score #wd_count wd_timer = #wd_total wd_timer run function wd:play/warden/choose_next
tp ~ ~1 ~
execute at @s run function wd:play/block_to_score

function wd:play/warden/reset_display
# set display
execute if score #next wd_timer matches 0 run function wd:decoration/green
execute if score #next wd_timer matches 0 as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.707107

execute if score #next wd_timer matches 1 run function wd:decoration/blue
execute if score #next wd_timer matches 1 as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.890899

execute if score #next wd_timer matches 2 run function wd:decoration/yellow
execute if score #next wd_timer matches 2 as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.059463

execute if score #next wd_timer matches 3 run function wd:decoration/magenta
execute if score #next wd_timer matches 3 as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.189207

#debug
# title @a actionbar [{"score":{"name": "#next","objective": "wd_timer"}}, " ", {"score":{"name": "#wd_count","objective": "wd_timer"}}, " ", {"score":{"name": "#wd_total","objective": "wd_timer"}}, " ", {"nbt":"Pos[1]", "entity": "@s"}]

# warden sequence done
execute if score #wd_count wd_timer = #wd_total wd_timer run schedule function wd:play/bridge/start 2t
