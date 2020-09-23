# Controls the door opening and candy receiving "cutscene"
# @calledBy: tot:ready_door
# @calls: tot:door_animation5, tot:door_animation25, tot:door_animation33, tot:door_animation46
# @author: dragonmaster95

scoreboard players add @s timer 1
execute positioned ~-0.5 ~ ~-0.5 run tp @p[tag=tot_tricking,dy=0] @s

#Open door
execute if score @s timer matches 5 positioned ^ ^ ^2 run function tot:door_animation5

#Sound and points
execute if score @s timer matches 25 run function tot:door_animation25

#Trick or Treat
execute if entity @s[tag=!tot_witch,scores={timer=33}] positioned ~-0.5 ~ ~-0.5 run tellraw @p[tag=tot_tricking,dy=0] ["",{"text":"Treated! +","color":"green"},{"score":{"name":"@s","objective":"points"},"color":"green"},{"text":"\nChocolate Emeralds: ","color":"gold"},{"score":{"name":"@p[tag=tot_tricking,dy=0]","objective":"tot_treats"},"color":"gold"}]
execute if entity @s[tag=tot_witch,scores={timer=33}] positioned ~-0.5 ~ ~-0.5 run tellraw @p[tag=tot_tricking,dy=0] ["",{"text":"Tricked! ","color":"red"},{"score":{"name":"@s","objective":"points"},"color":"red"},{"text":"\nChocolate Emeralds: ","color":"gold"},{"score":{"name":"@p[tag=tot_tricking,dy=0]","objective":"tot_treats"},"color":"gold"}]
execute if score @s timer matches 33 run function tot:door_animation33

#Close door
execute if score @s timer matches 46 run function tot:door_animation46