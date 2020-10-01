scoreboard players remove #apple bc_timer 40

execute store result score #ap tmp if entity @e[type=item,x=551,y=62,z=-500,distance=..13,nbt={Item:{id:"minecraft:apple"}}]
execute if score #ap tmp matches ..5 run summon item 551 77 -500 {Item:{id:"minecraft:apple",Count:1b},Age:5400}
execute if score #ap tmp matches ..5 run spreadplayers 551 -500 0 12 under 65 false @e[type=item,x=551,y=77,z=-500,distance=..1]