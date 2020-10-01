#Not enough Money
execute if score @s candies < @e[type=armor_stand,limit=1,distance=..0.1,tag=Costume] const run function lobby:costume/info/purchase_fail

execute if score @s candies >= @e[type=armor_stand,limit=1,distance=..0.1,tag=Costume] const run function lobby:costume/info/purchase_success

scoreboard players set @s buyCostume 0