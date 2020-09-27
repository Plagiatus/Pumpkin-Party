# as bc_cauldron armorstand

scoreboard players set #steps tmp 0
scoreboard players set #success tmp 0
scoreboard players set #i1 tmp 0
scoreboard players set #i2 tmp 0
scoreboard players set #i3 tmp 0
scoreboard players set #total tmp 0

execute if score bc_difficulty settings matches ..0 run function bc:cauldron/check/recipe_not_in_order
execute if score bc_difficulty settings matches 1.. run function bc:cauldron/check/recipe_in_order

# was the recipe successful
execute if score #success tmp matches 1 run function bc:recipe/success
execute if score #success tmp matches 0 if score #steps tmp matches 1 run function bc:recipe/getting_there
execute if score #success tmp matches 0 if score #steps tmp matches 0 run function bc:recipe/failed