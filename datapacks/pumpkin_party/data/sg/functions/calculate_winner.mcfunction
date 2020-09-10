scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[scores={sg_points_tmp=0}] sg_points
execute as @a[scores={sg_points_tmp=0}] as @a if score @s sg_points = #max tmp run scoreboard players add @s sg_points_tmp 1
execute if score #rank tmp matches 1 as @a if score @s sg_points = #max tmp run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},": ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points"]
execute if score #rank tmp matches 2 as @a if score @s sg_points = #max tmp run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},": ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points"]
execute if score #rank tmp matches 3 as @a if score @s sg_points = #max tmp run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},": ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points"]
execute if score #rank tmp matches 4.. as @a if score @s sg_points = #max tmp run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},": ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points"]

scoreboard players add #rank tmp 1
execute if entity @a[scores={sg_points_tmp=0}] run function sg:calculate_winner