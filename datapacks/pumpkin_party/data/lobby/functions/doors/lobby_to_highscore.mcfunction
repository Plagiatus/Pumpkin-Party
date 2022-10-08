effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s ~-1 ~17 ~8
execute if block 400 86 513 dark_oak_door[open=false] run setblock 400 85 512 air
setblock 400 85 512 redstone_torch
setblock 376 85 512 redstone_torch
setblock 401 68 506 air
advancement grant @s only lobby:magic_cabinets door5