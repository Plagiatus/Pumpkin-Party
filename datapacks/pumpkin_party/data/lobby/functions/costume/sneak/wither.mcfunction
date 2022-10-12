playsound minecraft:entity.wither.shoot player @a ~ ~ ~

execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Pose:{Head:[0.1f,0.1f,0.1f]},Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:10014}}],Tags:["lobby_shoot_forward","wither_skull","picture","new"]}
execute anchored eyes rotated as @s run tp @e[type=armor_stand,tag=new,tag=lobby_shoot_forward] ^ ^ ^0.25 ~ ~
data modify entity @e[distance=..2,limit=1,tag=lobby_shoot_forward] Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=lobby_shoot_forward] remove new