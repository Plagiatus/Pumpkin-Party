# Closes door and ends animation
# @calledBy: tot:door_animation
# @author: dragonmaster95

#Close door
playsound minecraft:block.wooden_door.close master @a[dy=0] ^ ^ ^2
fill ^1 ^1 ^2 ^-1 ^-2 ^3 structure_void replace redstone_torch
execute positioned ^ ^ ^2 run tp @e[dy=0,tag=tot_doorMob] ~ ~-500 ~

#Witch effects
execute if entity @s[tag=tot_witch] run summon lightning_bolt ^ ^1 ^2
execute if entity @s[tag=tot_witch] run effect give @p[tag=tot_tricking,dy=0] minecraft:slowness 5 4
execute if entity @s[tag=tot_witch] run effect give @p[tag=tot_tricking,dy=0] minecraft:blindness 5
execute if entity @s[tag=tot_witch] run effect give @p[tag=tot_tricking,dy=0] instant_health 6 6

tag @s remove tot_witch
scoreboard players set @s timer 0
scoreboard players add @p[tag=tot_tricking,dy=0] tot_doorsKnocked 1
scoreboard players set @a[scores={tot_treats=-1}] tot_treats 0
scoreboard players reset @s points

#Set new cooldown
scoreboard players set $max tmp 4
function pp:util/get_random
scoreboard players add $random tmp 1
scoreboard players operation @s tmp = $random tmp
scoreboard players operation @s tmp *= #50 const

#Advancements
advancement grant @a[scores={tot_treats=64..}] only tot:candy_baron
advancement grant @a[scores={tot_doorsKnocked=25..}] only tot:door_knocker