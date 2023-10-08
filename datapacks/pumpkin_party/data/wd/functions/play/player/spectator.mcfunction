effect give @s invisibility 1 0 true
execute store result score @s tmp run data get entity @s SelectedItemSlot

title @s actionbar [{"text":"Select a hotbar slot to change perspective.","color": "#ff6600"}]

## different positions depending on hotbar
# center close (original)
tp @s[scores={tmp=0}] -1000 65 1000 facing -1000 72 1022
# center far front
tp @s[scores={tmp=1}] -1000 73 990 facing -1000 60 1022
# center back
tp @s[scores={tmp=2}] -1000 73 1019 180 40
# center super close looking up
tp @s[scores={tmp=3}] -1000 67 1010 0 -15
# right far
tp @s[scores={tmp=4}] -1016 71 996 -50 17
# left far
tp @s[scores={tmp=5}] -984 71 996 50 17
# left back
tp @s[scores={tmp=6}] -990 72.5 1015 136 27
# right back
tp @s[scores={tmp=7}] -1010 72.5 1015 -136 27
# top down
tp @s[scores={tmp=8}] -1000 90 1002 0 90