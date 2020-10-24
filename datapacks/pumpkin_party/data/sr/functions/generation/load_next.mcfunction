execute if score sr_difficulty settings matches 0 positioned ~1 ~ ~ run function sr:generation/selection/normal
execute if score sr_difficulty settings matches 1 positioned ~1 ~ ~ run function sr:generation/selection/hard
execute if score sr_difficulty settings matches 2 positioned ~1 ~ ~ run function sr:generation/selection/nightmare

setblock ~1 ~ ~1 redstone_block

tp @a[tag=sr_generate] ~ ~30 ~

# reset timer 
scoreboard players set #timer timer 5
scoreboard players remove #parts sr_distance 1

# remove AEC
kill @s

# check if generator stops working (spigot related)
scoreboard players set #failtimer timer 0
