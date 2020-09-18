effect give @s blindness 1 0 true
playsound minecraft:block.wooden_door.close block @s
tp @s 401 69 505.40625 ~180 ~
execute if block 401 69 505 dark_oak_door[open=false] run setblock 401 68 506 air
setblock 356 78 501 air
setblock 401 68 506 redstone_torch

#401 69 505w