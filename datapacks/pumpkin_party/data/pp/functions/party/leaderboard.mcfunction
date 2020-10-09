# check for "next highest"
scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[tag=pp_high] points
execute as @a[tag=pp_high] if score @s points = #max tmp run tag @s add pp_lead

execute if score #rank tmp matches 1 as @a[tag=pp_lead] if score @s points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#ffd700"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candy and is thus the WINNER of the party!"]
execute if score #rank tmp matches 1 as @a[tag=pp_lead] unless score @s points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#ffd700"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candies and is thus the WINNER of the party!"]
execute if score #rank tmp matches 2 as @a[tag=pp_lead] if score @s points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#c0c0c0"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candy "]
execute if score #rank tmp matches 2 as @a[tag=pp_lead] unless score @s points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#c0c0c0"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candies "]
execute if score #rank tmp matches 3 as @a[tag=pp_lead] if score @s points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#cd7f32"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candy "]
execute if score #rank tmp matches 3 as @a[tag=pp_lead] unless score @s points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#cd7f32"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candies "]
execute if score #rank tmp matches 4.. as @a[tag=pp_lead] if score @s points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"white"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candy "]
execute if score #rank tmp matches 4.. as @a[tag=pp_lead] unless score @s points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"white"}, " collected ", {"score": {"name": "@s","objective": "points"}}," candies "]

execute if score #rank tmp matches 1 run advancement grant @a[tag=pp_lead] only lobby:arcade_win

tag @a[tag=pp_lead] remove pp_high
tag @a[tag=pp_lead] remove pp_lead
scoreboard players add #rank tmp 1
execute if entity @a[tag=pp_high] run function pp:party/leaderboard