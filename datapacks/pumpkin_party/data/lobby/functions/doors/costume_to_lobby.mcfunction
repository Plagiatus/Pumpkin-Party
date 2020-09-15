effect give @s blindness 1 0 true
tp @s 401 69 505.40625 ~180 ~
execute if block 401 69 505 dark_oak_door[open=false] run setblock 401 68 504 air
setblock 356 78 501 air
setblock 401 68 504 redstone_torch

#401 69 505w