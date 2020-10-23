#Costume
execute as @a[x=360,y=68,z=489,dx=19,dy=21,dz=22] at @s run function lobby:costume/detection
execute as @a[x=360,y=68,z=489,dx=24,dy=21,dz=22] at @s run function lobby:costume/show_names
execute at @e[scores={costume=121}] run particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0 3 force
execute as @a[team=,gamemode=adventure,scores={costume_sneak=1..}] at @s run function lobby:costume/sneak_interaction
execute as @a[team=,scores={drop_basket=1..}] at @s run function lobby:costume/basket
execute as @a[team=,scores={drop_full_basket=1..}] at @s run function lobby:costume/full_basket
execute as @a[tag=ul_pufferfish,team=,tag=small_puffer,scores={costume=6}] at @s if entity @a[distance=0.1..2.5] run function lobby:costume/sneak/pufferfish
execute as @a[tag=ul_pufferfish,team=,tag=!small_puffer,scores={costume=6}] at @s unless entity @a[distance=0.1..2.5] run function lobby:costume/pufferfish

#Costume effects
execute as @e[tag=lobby_shoot_forward] at @s run function lobby:costume/sneak/shoot_forward
execute as @a[team=,scores={costume=1,sound_delay=1..}] at @s run function lobby:costume/sneak/creeper
execute at @e[tag=wither_skull] run particle smoke ~ ~0.5 ~
execute at @a[team=,scores={costume=2}] run particle large_smoke ~ ~ ~ 0.2 1 0.2 0 1
execute at @a[team=,scores={costume=2}] run particle large_smoke ~ ~1 ~ 0.2 1 0.2 0 1
execute at @a[team=,scores={costume=5}] positioned ~ ~1.5 ~ run particle mycelium ^1.7 ^-0.6 ^-0.1
execute at @a[team=,scores={costume=5}] positioned ~ ~1.5 ~ run particle mycelium ^-1.7 ^-0.6 ^-0.1

#Buy costumes
execute as @a[team=,scores={buyCostume=1..}] at @s at @e[type=armor_stand,x=360,y=68,z=489,dx=19,dy=21,dz=22] if score @s buyCostume = @e[type=armor_stand,distance=..0.1,limit=1] costume run function lobby:costume/info/purchase_costume

#Costume sounds and delay
scoreboard players add @a sound_delay 0
scoreboard players remove @a[scores={sound_delay=1..}] sound_delay 1
execute as @a[scores={costume=1344}] at @s run function lobby:costume/sans_sound

#Lab
execute as @a[x=387,y=59,z=489,dx=7,dy=6,dz=6] unless entity @s[x=388,y=60,z=490,dx=5,dy=4,dz=4] at @s run function lobby:lab/exit_area
execute as @a[x=388,y=60,z=490,dx=5,dy=4,dz=4] at @s run function lobby:lab/main

#Init
execute as @a[tag=!init] run function lobby:init_player
execute as @a[x=8,y=198,z=13,distance=..2.1] run function lobby:tp_to_mansion

#Effects
effect give @a[team=] saturation 6 60 true
effect give @a[team=] instant_health 6 60 true
effect give @a[team=] weakness 6 60 true

#Teleport Doors
execute as @a[x=401,y=69,z=505,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/lobby_to_highscore
execute as @p[x=400,y=86,z=513,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/highscore_to_lobby
execute as @p[x=379,y=86,z=513,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/highscore_to_costume
execute as @p[x=356,y=79,z=500,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_lobby

execute as @a[x=365,y=68,z=493,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/credits_to_costume
execute as @p[x=378,y=79,z=492,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_credits

execute as @p[x=387,y=61,z=511,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/lab_to_costume
execute as @a[x=367,y=79,z=510,dx=0,dy=0,dz=0] at @s if block ~ ~ ~ dark_oak_door[open=false] run function lobby:doors/costume_to_lab

#Teleport to Costume via Costume in the lobby:
execute as @p[x=400,y=69,z=496,dx=0,dy=0,dz=0] run function lobby:tp_to_costume

#Mule Unlock
execute if entity @a[advancements={lobby:mule=false}] at @a[team=,scores={costume=468..469}] run function lobby:unlock_mule

# trigger gamestarts
execute as @a[scores={lbb_game=1..}] run function lobby:start/check

# offline players
execute if score #game_ongoing settings matches 0 as @a[scores={left_game=1..}] run function lobby:reset_player