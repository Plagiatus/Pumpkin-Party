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

# play sound for spectator
execute if score @s tmp = #next wd_timer if score @s tmp matches 0 at @s run playsound block.note_block.bit master @a[tag=wd_spectator] ~ ~ ~ 10 0.707107
execute if score @s tmp = #next wd_timer if score @s tmp matches 1 at @s run playsound block.note_block.bit master @a[tag=wd_spectator] ~ ~ ~ 10 0.890899
execute if score @s tmp = #next wd_timer if score @s tmp matches 2 at @s run playsound block.note_block.bit master @a[tag=wd_spectator] ~ ~ ~ 10 1.059463
execute if score @s tmp = #next wd_timer if score @s tmp matches 3 at @s run playsound block.note_block.bit master @a[tag=wd_spectator] ~ ~ ~ 10 1.189207

# summon display entity
execute if score @s tmp matches 0 run summon item_display ~ ~2.5 ~ {Tags:["wd.overhead"],brightness:{block:15,sky:15},billboard:"center",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}
execute if score @s tmp matches 1 run summon item_display ~ ~2.5 ~ {Tags:["wd.overhead"],brightness:{block:15,sky:15},billboard:"center",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}
execute if score @s tmp matches 2 run summon item_display ~ ~2.5 ~ {Tags:["wd.overhead"],brightness:{block:15,sky:15},billboard:"center",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}
execute if score @s tmp matches 3 run summon item_display ~ ~2.5 ~ {Tags:["wd.overhead"],brightness:{block:15,sky:15},billboard:"center",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}

# no mistake
execute if score @s tmp = #next wd_timer run scoreboard players add @s wd_timer 1

title @s times 0 20 20
# sequence done
execute if score @s wd_timer = #wd_total wd_timer run title @s title [{"text": "Well done!", "color": "green"}]

# mistake
execute unless score @s tmp = #next wd_timer run title @s title [{"text": "Wrong!", "color": "red"}]
execute unless score @s tmp = #next wd_timer at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.594604
execute unless score @s tmp = #next wd_timer at @s run playsound block.note_block.didgeridoo master @a[tag=wd_spectator] ~ ~ ~ 10 0.594604
execute unless score @s tmp = #next wd_timer run scoreboard players add @s wd_mistake 1