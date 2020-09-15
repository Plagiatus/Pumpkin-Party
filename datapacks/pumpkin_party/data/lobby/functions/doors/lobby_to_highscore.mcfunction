effect give @s blindness 1 0 true
tp @s ~-1 ~17 ~8
execute if block 400 86 513 dark_oak_door[open=false] run setblock 400 85 512 air
setblock 400 85 512 redstone_torch
setblock 401 68 506 air