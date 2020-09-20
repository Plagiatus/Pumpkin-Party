# Gives/Takes candy
# @calledBy: tot:door_animation
# @calls: itself
# @author: dragonmaster95

execute if score @s tmp matches 1.. run give @p[tag=tot_tricking,dy=0] minecraft:emerald{display:{Name:'{"italic":false,"text":"Chocolate Emerald"}',Lore:['{"text":"Inedible for humans."}','{"text":"This candy is every villagers favorite."}']}} 1
execute if score @s tmp matches 1.. run scoreboard players remove @s tmp 1

execute if score @s tmp matches -1 run advancement grant @p[tag=tot_tricking,dy=0] only tot:tricked
execute if score @s tmp matches ..-1 run clear @p[tag=tot_tricking,dy=0] minecraft:emerald{display:{Name:'{"italic":false,"text":"Chocolate Emerald"}',Lore:['{"text":"Inedible for humans."}','{"text":"This candy is every villagers favorite."}']}} 1 
execute if score @s tmp matches ..-1 run scoreboard players add @s tmp 1

execute unless score @s tmp matches 0 run function tot:door_animation33