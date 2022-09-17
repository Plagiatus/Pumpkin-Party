effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s ~-29 ~-7 ~-13
execute if block 348 79 500 dark_oak_door[open=false] run setblock 348 78 501 air
setblock 348 78 501 redstone_torch
setblock 379 85 512 air