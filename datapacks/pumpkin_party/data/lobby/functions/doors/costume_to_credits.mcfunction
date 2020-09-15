effect give @s blindness 1 0 true
tp @s 365 68 493.59375 ~180 ~
execute if block 365 68 493 dark_oak_door[open=false] run setblock 365 67 494 air
setblock 365 67 494 redstone_torch
setblock 378 78 491 air