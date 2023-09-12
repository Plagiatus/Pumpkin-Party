tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:10015,Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:15790320},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:14539482},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:14208204},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.ghast.warn player @a ~ ~ ~

execute if score @s sound_delay matches 0 run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~

execute if score @s sound_delay matches 0 anchored eyes run summon armor_stand ^ ^ ^0.5 {Small:1b,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:fireball",ExplosionPower:0,Tags:["fireball"],Fire:32767}],Tags:["fireball","lobby_shoot_forward","picture","new"]}
execute if score @s sound_delay matches 0 anchored eyes rotated as @s run tp @e[type=armor_stand,tag=new,tag=lobby_shoot_forward] ^ ^ ^0.25 ~ ~
execute if score @s sound_delay matches 0 run data modify entity @e[distance=..2,limit=1,tag=lobby_shoot_forward] Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=lobby_shoot_forward] remove new