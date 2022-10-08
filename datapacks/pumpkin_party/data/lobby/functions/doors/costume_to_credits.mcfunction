effect give @s blindness 1 0 true
title @s actionbar [{"text":""}]
playsound minecraft:block.wooden_door.close block @s
tp @s 365 68 493.59375 ~180 ~
execute if block 365 68 493 dark_oak_door[open=false] run setblock 365 67 494 air
setblock 365 67 494 redstone_torch
setblock 378 78 491 air
advancement grant @s only lobby:magic_cabinets door1