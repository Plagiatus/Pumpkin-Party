playsound minecraft:entity.llama.spit player @a ~ ~ ~
playsound minecraft:entity.llama.ambient player @a ~ ~ ~

execute anchored eyes run summon armor_stand ^ ^1 ^0.5 {Small:1b,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:llama_spit",Tags:["llama_spit"]}],Tags:["llama_spit","lobby_shoot_forward","picture","new"]}
execute anchored eyes positioned ~ ~1.5 ~ rotated as @s run tp @e[type=armor_stand,tag=new,tag=lobby_shoot_forward] ^ ^ ^0.25 ~ ~
data modify entity @e[distance=..2,limit=1,tag=lobby_shoot_forward] Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=lobby_shoot_forward] remove new