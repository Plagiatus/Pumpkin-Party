playsound minecraft:entity.blaze.ambient player @a ~ ~ ~
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~

execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Small:1b,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:snowball",Tags:["small_fireball"],Fire:32767,Item:{id:"minecraft:fire_charge",Count:1b}}],Tags:["small_fireball","lobby_shoot_forward","picture","new"]}
execute anchored eyes rotated as @s run tp @e[type=armor_stand,tag=new,tag=lobby_shoot_forward] ^ ^ ^0.25 ~ ~
data modify entity @e[distance=..2,limit=1,tag=lobby_shoot_forward] Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=lobby_shoot_forward] remove new