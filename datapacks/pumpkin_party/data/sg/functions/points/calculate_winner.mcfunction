# check for "next highest"
scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[team=sg_play,scores={sg_points_tmp=0}] sg_points
execute as @a[team=sg_play,scores={sg_points_tmp=0}] if score @s sg_points = #max tmp run tag @s add sg_lead

# calculate candy amount based on amount of points
execute as @a[tag=sg_lead] run scoreboard players operation @s sg_points_tmp = @s sg_points
execute as @a[tag=sg_lead] run scoreboard players operation @s sg_points_tmp *= 100 const
execute as @a[tag=sg_lead] run scoreboard players operation @s sg_points_tmp /= #max sg_points
execute as @a[tag=sg_lead] run scoreboard players operation @s sg_points_tmp *= #maxPoints const
execute as @a[tag=sg_lead] run scoreboard players operation @s sg_points_tmp /= 100 const
scoreboard players set @a[tag=sg_lead,scores={sg_points_tmp=..0}] sg_points_tmp 1

# show ranking
execute if score #rank tmp matches 1 as @a[tag=sg_lead] run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sg_points_tmp"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=sg_lead] run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sg_points_tmp"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=sg_lead] run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sg_points_tmp"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=sg_lead] run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " with ", {"score": {"name": "@s","objective": "sg_points"}}, " points ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sg_points_tmp"},"color":"gray"},{"text":" candies)","color":"gray"}]

# winning advancement
execute if score #rank tmp matches 1 as @a[tag=sg_lead] run advancement grant @s only sg:minigame_win

#Highscore
execute if score #rank tmp matches 1 as @a run scoreboard players operation @s sg_highscore > @s sg_points 
execute if score #rank tmp matches 1 as @a[tag=sg_lead] if score @s sg_highscore >= #sg_highscore sg_highscore run tag @s add sg_highscore 
execute if score #rank tmp matches 1 as @a[tag=sg_highscore] run scoreboard players operation #sg_highscore sg_highscore > @s sg_highscore
execute if score #rank tmp matches 1 if entity @a[tag=sg_highscore] run data merge block 388 87 514 {Text2:'{"color":"gold","score":{"name":"@a[tag=sg_highscore]","objective":"sg_highscore"}}',Text4:'{"color":"#FF6600","selector":"@a[tag=sg_highscore]"}'}
execute if score #rank tmp matches 1 run tag @a remove sg_highscore

# next player
tag @a remove sg_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=sg_play,scores={sg_points_tmp=0}] run function sg:points/calculate_winner