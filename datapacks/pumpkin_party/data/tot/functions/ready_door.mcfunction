# Show particles at ready doors and start animation 
# @calledBy: tot:game_logic
# @calls: 
# @author: dragonmaster95

execute unless entity @p[dy=0,gamemode=adventure,tag=tot_tricking] run particle item gold_nugget ~ ~.0 ~ 0.1 0.5 0.1 0 20 force @a
tag @p[dy=0,gamemode=adventure] add tot_tricking

execute if entity @p[dy=0,gamemode=adventure] run function tot:door_animation