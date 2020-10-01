scoreboard players set #nether_wart bc_timer 40

execute store result score #nw tmp if entity @e[type=item,x=572,y=66,z=-517,distance=..10,nbt={Item:{id:"minecraft:nether_wart"}}]
execute if score #nw tmp matches ..5 run summon item 572 77 -517 {Item:{id:"minecraft:nether_wart",Count:1b},Age:5400}
execute if score #nw tmp matches ..5 run spreadplayers 572 -517 0 5 under 70 false @e[type=item,x=572,y=77,z=-517,distance=..1]