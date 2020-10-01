# check for "next highest"
scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[team=bc_play,scores={bc_timer=0}] bc_points
execute as @a[team=bc_play,scores={bc_timer=0}] if score @s bc_points = #max tmp run tag @s add bc_lead

# calculate candy amount based on amount of points
execute as @a[tag=bc_lead] run scoreboard players operation @s bc_timer = @s bc_points
execute as @a[tag=bc_lead] run scoreboard players operation @s bc_timer *= 100 const
execute as @a[tag=bc_lead] run scoreboard players operation @s bc_timer /= #max bc_points
execute as @a[tag=bc_lead] run scoreboard players operation @s bc_timer *= #maxPoints const
execute as @a[tag=bc_lead] run scoreboard players operation @s bc_timer /= 100 const
scoreboard players set @a[tag=bc_lead,scores={bc_timer=..0}] bc_timer 1

# show ranking
execute if score #rank tmp matches 1 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]

# winning advancement
execute if score #rank tmp matches 1 as @a[tag=bc_lead] run advancement grant @s only bc:minigame_win

# next player
tag @a remove bc_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=bc_play,scores={bc_timer=0}] run function bc:end/calculate_winner