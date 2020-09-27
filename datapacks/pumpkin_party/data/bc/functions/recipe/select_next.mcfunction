function bc:recipe/reset
execute store result score @s bc_recipe run data get entity @s ArmorItems[3].tag.recipes[0]
execute if score @s bc_recipe matches 0 run function bc:recipe/generate/next
data remove entity @s ArmorItems[3].tag.recipes[0]

tag @s add self
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run scoreboard players operation @s bc_recipe = @e[tag=self,limit=1] bc_recipe
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run function bc:player/reset_inventory

tag @s remove self