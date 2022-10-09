# check for "next highest"
scoreboard players set #max tmp -10000
scoreboard players operation #max tmp > @a[team=wd_play,scores={wd_timer=0}] wd_points
execute as @a[team=wd_play,scores={wd_timer=0}] if score @s wd_points = #max tmp run tag @s add wd_lead

# calculate candy amount based on amount of points
execute as @a[tag=wd_lead] run scoreboard players operation @s wd_timer = @s wd_points
execute as @a[tag=wd_lead] run scoreboard players operation @s wd_timer *= 100 const
execute as @a[tag=wd_lead] run scoreboard players operation @s wd_timer /= #max wd_points
execute as @a[tag=wd_lead] run scoreboard players operation @s wd_timer *= #maxPoints const
execute as @a[tag=wd_lead] run scoreboard players operation @s wd_timer /= 100 const
scoreboard players set @a[tag=wd_lead,scores={wd_timer=..0}] wd_timer 1

# show ranking
execute if score #rank tmp matches 1 as @a[tag=wd_lead] run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#ffd700"}, " survived ", {"score": {"name": "@s","objective": "wd_points"}}, " rounds", {"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "wd_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=wd_lead] run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#c0c0c0"}, " survived ", {"score": {"name": "@s","objective": "wd_points"}}, " rounds", {"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "wd_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=wd_lead] run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#cd7f32"}, " survived ", {"score": {"name": "@s","objective": "wd_points"}}, " rounds", {"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "wd_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=wd_lead] run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"white"}, " survived ", {"score": {"name": "@s","objective": "wd_points"}}, " rounds", {"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "wd_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]

# winning advancement
execute if score #rank tmp matches 1 as @a[tag=wd_lead] run advancement grant @s only wd:minigame_win

#Highscore
execute if score #rank tmp matches 1 as @a run scoreboard players operation @s wd_highscore > @s wd_points 
execute if score #rank tmp matches 1 as @a[tag=wd_lead] if score @s wd_highscore > #wd_highscore wd_highscore run tag @s add wd_highscore
execute if score #rank tmp matches 1 as @a[tag=wd_highscore] run scoreboard players operation #wd_highscore wd_highscore > @s wd_highscore
execute if score #rank tmp matches 1 if entity @a[tag=wd_highscore] run data merge block 379 87 514 {Text2:'{"color":"gold","score":{"name":"@a[tag=wd_highscore]","objective":"wd_highscore"}}',Text4:'{"color":"#FF6600","selector":"@a[tag=wd_highscore]"}'}
execute if score #rank tmp matches 1 run tag @a remove wd_highscore
# next player
tag @a remove wd_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=wd_play,scores={wd_timer=0}] run function wd:points/calculate