execute store result score #spiderX sr_distance run data get entity @e[tag=sr_spider,limit=1] Pos[0] 10
scoreboard players add #spiderX sr_distance 40
execute if score #sr_end sr_time matches 49.. as @a[team=sr_play,tag=!sr_caught] run function sr:run/display_actionbar

# "catch" players
execute if score #sr_end sr_time matches 1.. at @e[tag=sr_spider] positioned ~ ~-5 ~-7 as @a[dx=3,dy=10,dz=15,tag=!sr_caught,tag=!sr_end] run function sr:run/caught_late
execute if score #sr_end sr_time matches ..0 at @e[tag=sr_spider] positioned ~ ~-5 ~-7 as @a[dx=5,dy=10,dz=15,tag=!sr_caught,tag=!sr_end] run function sr:run/caught_late

# check spider position
scoreboard players operation #sr_goal tmp = #sr_goal sr_distance
scoreboard players operation #sr_goal tmp -= #spiderX sr_distance

# move spider
execute if score #sr_goal tmp matches 0.. as @e[tag=sr_spider] at @s run function sr:run/move_spider

# make sure things stop moving
execute if score #sr_end sr_time matches -10 as @e[tag=sr_spider_spider,tag=!sr_end] run data merge entity @s {Tags:["sr_spider_spider","sr_end"],NoAI:1b}
execute if score #sr_end sr_time matches -10 as @e[tag=sr_spider,tag=!sr_end] run data merge entity @s {Tags:["sr_spider","sr_end"],NoGravity:1b}

# end timer
scoreboard players remove #sr_end sr_time 1

# cutscene
execute if score #sr_end sr_time matches 49 if entity @a[limit=1,team=sr_play,tag=!sr_caught] run tellraw @a [{"translate": "chat.type.text","with": [{"selector": "@a[limit=1,team=sr_play,tag=!sr_caught,sort=random]"},{"text": "There she comes! Close the gate!"}]}]
execute if score #sr_end sr_time matches 45 at @e[tag=sr_gate] positioned ~ ~5 ~ run function sr:run/close_gate
execute if score #sr_end sr_time matches 35 at @e[tag=sr_gate] positioned ~ ~4 ~ run function sr:run/close_gate
execute if score #sr_end sr_time matches 25 at @e[tag=sr_gate] positioned ~ ~3 ~ run function sr:run/close_gate
execute if score #sr_end sr_time matches 20 at @e[tag=sr_gate] positioned ~ ~2 ~ run function sr:run/close_gate
execute if score #sr_end sr_time matches 16 at @e[tag=sr_gate] positioned ~ ~1 ~ run function sr:run/close_gate
execute if score #sr_end sr_time matches 13 at @e[tag=sr_gate] run function sr:run/close_gate
execute if score #sr_end sr_time matches 10 at @e[tag=sr_gate] run fill ~ ~ ~2 ~ ~ ~9 iron_bars
execute if score #sr_end sr_time matches 10 at @e[tag=sr_gate] positioned ~ ~3 ~ run playsound block.anvil.land voice @a


execute if score #sr_end sr_time matches -80 run function sr:end

# give strider advancement
execute as @a at @s if block ~ ~ ~ lava run advancement grant @s only sr:hot_feet