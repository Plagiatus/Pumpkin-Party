effect give @s blindness 1 0 true
tp @s 378 79 492.40625 ~180 ~
execute if block 378 79 492 dark_oak_door[open=false] run setblock 378 78 491 air
setblock 378 78 491 redstone_torch
setblock 365 67 494 air

