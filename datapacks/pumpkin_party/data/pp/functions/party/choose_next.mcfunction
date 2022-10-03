
execute store result score #tmp tmp run data get storage pp:party gamestmp
execute if score #tmp tmp matches 0 run data modify storage pp:party gamestmp set from storage pp:party games

execute store result score #selected tmp run data get storage pp:party gamestmp[0]
data remove storage pp:party gamestmp[0]

execute if score #selected tmp matches 1 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with yellow_carpet
execute if score #selected tmp matches 2 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with light_blue_carpet
execute if score #selected tmp matches 3 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with magenta_carpet
execute if score #selected tmp matches 4 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with lime_carpet
execute if score #selected tmp matches 5 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with pink_carpet
execute if score #selected tmp matches 6 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with orange_carpet
execute if score #selected tmp matches 7 run item replace entity @e[tag=lbb_PaintingSelect] weapon.mainhand with gray_carpet

execute as @a at @s run playsound minecraft:block.note_block.hat voice @s