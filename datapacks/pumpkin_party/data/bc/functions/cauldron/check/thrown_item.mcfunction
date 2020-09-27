scoreboard players set #tmp tmp 0

execute as @e[type=armor_stand,tag=bc_cauldron,limit=1,sort=nearest] run scoreboard players add @s bc_count 1
execute store result entity @s Item.tag.num int 1 run scoreboard players get @e[type=armor_stand,tag=bc_cauldron,limit=1,sort=nearest] bc_count
data modify entity @e[type=armor_stand,tag=bc_cauldron,limit=1,sort=nearest] ArmorItems[3].tag.items append from entity @s Item

execute as @e[type=armor_stand,tag=bc_cauldron,limit=1,sort=nearest] at @s run function bc:cauldron/check/recipe

kill @s