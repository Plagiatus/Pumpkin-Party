tellraw @s ["",{"text":"Purchase it for "},{"score":{"name":"@e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume]","objective":"const"},"color":"#FF6600"},{"text":" candies."}]

#More money
execute if score @s candies >= @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run scoreboard players enable @s buyCostume
execute if score @s candies >= @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run playsound minecraft:entity.villager.trade master @s

#Not enough money
execute if score @s candies < @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run tellraw @s ["",{"text":"You don't seem to have enough candy to unlock this costume.\nPlay more minigames to earn more candies.\n"}]
execute if score @s candies < @e[type=minecraft:armor_stand,distance=..1.5,sort=nearest,limit=1,tag=Costume] const run playsound minecraft:entity.villager.no master @s