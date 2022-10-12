effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s 401 69 505.40625 ~180 ~
execute if block 401 69 505 dark_oak_door[open=false] run setblock 401 68 506 air
setblock 348 78 501 air
setblock 401 68 506 redstone_torch
advancement grant @s only lobby:magic_cabinets door3
#401 69 505w