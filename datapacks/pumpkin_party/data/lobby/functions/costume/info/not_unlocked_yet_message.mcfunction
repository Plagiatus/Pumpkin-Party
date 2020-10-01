tellraw @s ["",{"text":"\nYou haven't unlocked the ","color":"dark_red"},{"nbt":"CustomName","entity":"@e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume]","interpret":true,"color":"#FF6600"},{"text":" Costume","color":"#FF6600"},{"text":" yet.","color":"dark_red"}]
tellraw @s {"text":"Unlocking Condition: ","bold":true,"color":"gold"}
tag @s add costume_failed