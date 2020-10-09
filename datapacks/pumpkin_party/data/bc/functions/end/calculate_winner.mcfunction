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
execute if score #rank tmp matches 1 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#ffd700"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#ffd700"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#c0c0c0"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#c0c0c0"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#cd7f32"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"#cd7f32"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=bc_lead] if score @s bc_points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"white"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potion brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. as @a[tag=bc_lead] unless score @s bc_points matches 1 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s","color":"white"}, " with ", {"score": {"name": "@s","objective": "bc_points"}}, " potions brewed ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "bc_timer"},"color":"gray"},{"text":" candies)","color":"gray"}]

# winning advancement
execute if score #rank tmp matches 1 as @a[tag=bc_lead] run advancement grant @s only bc:minigame_win

#Highscore
execute if score #rank tmp matches 1 as @a run scoreboard players operation @s bc_highscore > @s bc_points 
execute if score #rank tmp matches 1 as @a[tag=bc_lead] if score @s bc_highscore > #bc_highscore bc_highscore run tag @s add bc_highscore 
execute if score #rank tmp matches 1 as @a[tag=bc_highscore] run scoreboard players operation #bc_highscore bc_highscore > @s bc_highscore
execute if score #rank tmp matches 1 if entity @a[tag=bc_highscore] run data merge block 397 87 514 {Text2:'{"color":"gold","score":{"name":"@a[tag=bc_highscore]","objective":"bc_highscore"}}',Text4:'{"color":"#FF6600","selector":"@a[tag=bc_highscore]"}'}
#Old command: execute if score #rank tmp matches 1 if entity @a[tag=bc_highscore] run data merge block 397 87 514 {Text1:'{"text":"Potions brewed:"}',Text2:'{"color":"gold","score":{"name":"@a[tag=bc_highscore]","objective":"bc_highscore"}}',Text3:'{"text":"By player:","clickEvent":{"action":"run_command","value":\'/tellraw @s ["",{"text":"Personal best: "},{"score":{"name":"@s","objective":"bc_highscore"}}]\'}}',Text4:'{"color":"#FF6600","selector":"@a[tag=bc_highscore]"}'}
execute if score #rank tmp matches 1 run tag @a remove bc_highscore
# next player
tag @a remove bc_lead
scoreboard players add #rank tmp 1
execute if entity @a[team=bc_play,scores={bc_timer=0}] run function bc:end/calculate_winner