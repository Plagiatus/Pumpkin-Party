effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s ~9 ~-11 ~-7
execute if block 365 68 493 dark_oak_door[open=false] run setblock 365 67 494 air
setblock 365 67 494 redstone_torch
setblock 356 78 501 air
advancement grant @s only lobby:magic_cabinets door3