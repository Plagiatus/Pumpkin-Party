# Open door
# @calledBy: tot:door_animation
# @author: dragonmaster95

#TODO: check if this actually works on all doors!
fill ^1 ^1 ^ ^-1 ^-2 ^1 redstone_torch replace structure_void

playsound minecraft:block.wooden_door.open master @a

execute if entity @s[tag=!tot_witch] run summon villager ~0.5 ~ ~0.5 {NoAI:1,Silent:1,Invulnerable:1b,Tags:["tot_doorMob"]}
execute if entity @s[tag=tot_witch] run summon witch ~0.5 ~ ~0.5 {NoAI:1,Silent:1,Invulnerable:1b,Tags:["tot_doorMob"]}

execute as @e[dy=0,tag=tot_doorMob] at @s run tp @s ~ ~ ~ facing entity @p[tag=tot_tricking]
