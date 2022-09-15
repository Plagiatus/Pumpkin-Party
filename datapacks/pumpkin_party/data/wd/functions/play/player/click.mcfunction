scoreboard players set @s tmp -1
execute store result score @s tmp run data get entity @s SelectedItem.tag.Warden

# check for corresponding marker
scoreboard players operation #tmp wd_id = @s wd_id
execute as @e[type=marker,tag=wd_marker] if score @s wd_id = #tmp wd_id at @s run function wd:play/player/marker

# debug
# tellraw @s [{"score":{"name": "@s", "objective": "tmp"}}, " ", {"score":{"name": "#next", "objective": "wd_timer"}}]

# play sound
execute if score @s tmp = #next wd_timer if score @s tmp matches 0 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.707107
execute if score @s tmp = #next wd_timer if score @s tmp matches 1 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.890899
execute if score @s tmp = #next wd_timer if score @s tmp matches 2 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.059463
execute if score @s tmp = #next wd_timer if score @s tmp matches 3 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.189207

# no mistake
execute if score @s tmp = #next wd_timer run scoreboard players add @s wd_timer 1

title @s times 0 20 20
# sequence done
execute if score @s wd_timer = #wd_total wd_timer run title @s title [{"text": "Well done!", "color": "green"}]

# mistake
execute unless score @s tmp = #next wd_timer run title @s title [{"text": "Wrong!", "color": "red"}]
execute unless score @s tmp = #next wd_timer run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute unless score @s tmp = #next wd_timer run scoreboard players add @s wd_mistake 1