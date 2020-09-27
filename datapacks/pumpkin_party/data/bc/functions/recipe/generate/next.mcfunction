scoreboard players set $max tmp 10
function pp:util/get_random
scoreboard players add $random tmp 1

execute store result entity @s ArmorItems[3].tag.tmp int 1 run scoreboard players get $random tmp
tag @s add self

execute as @e[tag=bc_cauldron] run data modify entity @s ArmorItems[3].tag.recipes append from entity @e[tag=self,limit=1] ArmorItems[3].tag.tmp

tag @s remove self

scoreboard players operation @s bc_recipe = $random tmp
