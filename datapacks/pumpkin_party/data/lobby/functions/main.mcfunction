#Costume
execute as @a[x=360,y=68,z=489,dx=19,dy=21,dz=22] at @s run function lobby:costume/detection
execute as @a[x=360,y=68,z=489,dx=24,dy=21,dz=22] at @s run function lobby:costume/show_names
execute at @a[gamemode=adventure,scores={costume=14}] run particle crit ~ ~1 ~ 0.25 0.5 0.25 0 3 force
execute as @a[team=,gamemode=adventure,scores={costume_sneak=1..}] at @s run function lobby:costume/sneak_interaction
execute as @a[team=,scores={drop_basket=1..}] at @s run function lobby:costume/basket
execute as @a[team=,scores={drop_full_basket=1..}] at @s run function lobby:costume/full_basket

#Lab
execute as @a[x=387,y=59,z=489,dx=7,dy=6,dz=6] unless entity @s[x=388,y=60,z=490,dx=5,dy=4,dz=4] at @s run function lobby:lab/exit_area
execute as @a[x=388,y=60,z=490,dx=5,dy=4,dz=4] at @s run function lobby:lab/main

#Innit
execute as @a[tag=!init] run function lobby:init_player
execute as @a[x=8,y=198,z=13,distance=..2.1] run function lobby:tp_to_mansion

#Effects
effect give @a[team=] saturation 6 60 true
effect give @a[team=] instant_health 6 60 true

#Teleport Doors
execute as @a[x=401,y=69,z=505,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/lobby_to_highscore
execute as @p[x=400,y=86,z=513,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/highscore_to_lobby
execute as @p[x=379,y=86,z=513,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/highscore_to_costume
execute as @p[x=356,y=79,z=500,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_lobby



execute as @a[x=365,y=68,z=493,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/credits_to_costume
execute as @p[x=378,y=79,z=492,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_credits

execute as @p[x=387,y=61,z=511,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/lab_to_costume
execute as @a[x=367,y=79,z=510,dx=1,dy=1,dz=1] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_lab
