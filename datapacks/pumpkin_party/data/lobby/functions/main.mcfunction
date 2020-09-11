execute as @a[x=360,y=79,z=489,dx=19,dy=10,dz=22] at @s run function lobby:costume/detection
execute as @a[x=360,y=68,z=489,dx=24,dy=21,dz=22] at @s run function lobby:costume/show_names
execute at @a[gamemode=adventure,scores={costume=14}] run particle crit ~ ~1 ~ 0.25 0.5 0.25 0 3 force
execute as @a[team=,scores={costume_sneak=1..}] at @s run function lobby:costume/sneak_interaction
execute as @a[team=,scores={drop_basket=1..}] at @s run function lobby:costume/basket
execute as @a[team=,scores={drop_full_basket=1..}] at @s run function lobby:costume/full_basket


execute as @a[tag=!init] run function lobby:init_player
execute as @a[x=8,y=198,z=13,distance=..2.1] run function lobby:tp_to_mansion
