# Gameplay loop
# @calledBy: tot:main
# @calls: 
# @author: dragonmaster95
# Notes: tmp = a cooldown

scoreboard players remove $ticks timer 1
effect give @a[team=tot_play] saturation 1 60 true
effect give @a[team=tot_play] regeneration 1 60 true
effect give @a[team=tot_play] resistance 1 60 true
function pp:util/display_timer

#Reduce cooldown
scoreboard players remove @e[type=minecraft:armor_stand,scores={tmp=1..}] tmp 1
execute as @e[name=tot_doorbell,type=minecraft:armor_stand,scores={tmp=0}] at @s run function tot:ready_door

scoreboard players operation $ticks tmp = $ticks timer
scoreboard players operation $ticks tmp %= #20 const
execute if score $ticks tmp matches 0 run function tot:random_witch
execute if score $ticks timer matches 0 run scoreboard players set #tot_gamestate tmp 4