tellraw @s ["",{"text":"Purchase it for "},{"score":{"name":"@e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume]","objective":"const"},"color":"#FF6600"},{"text":" candies."}]
execute if score @s candies >= @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run scoreboard players enable @s buyCostume

execute if score @s candies < @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run tellraw @s ["",{"text":"You don't seem to have enough candy to unlock this costume.\nPlay more minigames to earn more candies.\n"}]