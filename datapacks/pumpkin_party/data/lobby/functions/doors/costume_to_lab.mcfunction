effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s ~20 ~-18 ~1
execute if block 387 61 511 dark_oak_door[open=false] run setblock 388 60 511 air
setblock 388 60 511 redstone_torch
setblock 368 78 510 air
