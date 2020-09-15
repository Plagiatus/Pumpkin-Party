effect give @s blindness 1 0 true
tp @s ~1 ~-17 ~-8
execute if block 401 69 505 dark_oak_door[open=false] run setblock 401 68 506 air
setblock 401 68 506 redstone_torch
setblock 400 85 512 air