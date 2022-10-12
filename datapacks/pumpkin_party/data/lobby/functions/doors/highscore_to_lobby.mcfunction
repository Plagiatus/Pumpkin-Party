effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s ~1 ~-17 ~-8
execute if block 401 69 505 dark_oak_door[open=false] run setblock 401 68 506 air
setblock 401 68 506 redstone_torch
setblock 400 85 512 air
advancement grant @s only lobby:magic_cabinets door5