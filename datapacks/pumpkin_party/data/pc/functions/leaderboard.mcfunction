# check for "next highest"
scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[tag=pc_high] pc_points
execute as @a[tag=pc_high] if score @s pc_points = #max tmp run tag @s add pc_lead

execute if score #rank tmp matches 1 as @a[tag=pc_lead] if score @s tmp matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkin ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 as @a[tag=pc_lead] unless score @s tmp matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkins ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=pc_lead] if score @s tmp matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkin ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=pc_lead] unless score @s tmp matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkins ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=pc_lead] if score @s tmp matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkin ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=pc_lead] unless score @s tmp matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkins ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=pc_lead] if score @s tmp matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkin ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=pc_lead] unless score @s tmp matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " carved ", {"score": {"name": "@s","objective": "tmp"}}," pumpkins ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "pc_points"},"color":"gray"},{"text":" candies)","color":"gray"}]

tag @a[tag=pc_lead] remove pc_high
tag @a[tag=pc_lead] remove pc_lead
scoreboard players add #rank tmp 1
execute if entity @a[tag=pc_high] run function pc:leaderboard