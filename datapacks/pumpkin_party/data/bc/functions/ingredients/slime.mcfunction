scoreboard players set #slime bc_timer 40

execute store result score #sl tmp if entity @e[type=slime,x=583,y=62,z=-473,distance=..13]
execute if score #sl tmp matches ..5 if entity @a[x=583,y=62,z=-473,distance=..20] run summon slime 583 51 -473 {Size:0,Health:1}
execute if score #sl tmp matches ..5 if entity @a[x=583,y=62,z=-473,distance=..20] run spreadplayers 583 -473 0 5 under 65 false @e[type=slime,x=583,y=51,z=-473,distance=..1]