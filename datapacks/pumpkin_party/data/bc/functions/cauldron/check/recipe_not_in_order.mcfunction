execute if score @s bc_recipe matches -1 run function bc:recipe/recipes/example
execute if score @s bc_recipe matches 1 run function bc:recipe/recipes/cranium
execute if score @s bc_recipe matches 2 run function bc:recipe/recipes/metamordhasis
execute if score @s bc_recipe matches 3 run function bc:recipe/recipes/acid_cure
execute if score @s bc_recipe matches 4 run function bc:recipe/recipes/green_juice
execute if score @s bc_recipe matches 5 run function bc:recipe/recipes/thick_skin
execute if score @s bc_recipe matches 6 run function bc:recipe/recipes/vegan_blend
execute if score @s bc_recipe matches 7 run function bc:recipe/recipes/leftovers
execute if score @s bc_recipe matches 8 run function bc:recipe/recipes/purified_poison
execute if score @s bc_recipe matches 9 run function bc:recipe/recipes/gilded_breakfast
execute if score @s bc_recipe matches 10 run function bc:recipe/recipes/sticky_bomb

scoreboard players operation #total tmp += #i1 tmp
scoreboard players operation #total tmp += #i2 tmp
scoreboard players operation #total tmp += #i3 tmp

execute if score #i1 tmp matches 0..1 if score #i2 tmp matches 0..1 if score #i3 tmp matches 0..1 if score #total tmp = @s bc_count run scoreboard players set #steps tmp 1
execute if score #steps tmp matches 1 if score #total tmp matches 3 run scoreboard players set #success tmp 1