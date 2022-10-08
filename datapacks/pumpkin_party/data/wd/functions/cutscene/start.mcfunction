function wd:decoration/neutral
fill -1003 68 1012 -997 68 1013 minecraft:sculk replace air
fill -1003 68 1012 -997 68 1013 minecraft:sculk replace light
fill -995 67 1022 -1005 67 1022 minecraft:tinted_glass replace minecraft:air

kill @e[type=armor_stand,tag=wd_warden]
kill @e[type=armor_stand,tag=wd_camera]
kill @e[type=item_frame,tag=wd_camera_if]

summon armor_stand -1003 74 1014 {Tags:[wd_camera],Rotation:[-45, 55],NoBasePlate:1b, NoGravity:1b, Invisible:1b}

tp @e[type=minecraft:armor_stand,tag=wd_camera] -1001.91 68.50 1015.10 -2202.64 12.00

gamemode spectator @a
execute as @a run spectate @e[tag=wd_camera,limit=1] @s