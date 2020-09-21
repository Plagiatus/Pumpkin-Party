execute if score sr_difficulty settings matches 0..1 store result score @s tmp run data get entity @s Pos[0] 10
execute if score sr_difficulty settings matches 0..1 run scoreboard players operation @s tmp -= #spiderX sr_distance
execute if score sr_difficulty settings matches 0..1 run scoreboard players operation @s temp = @s tmp
execute if score sr_difficulty settings matches 0..1 run scoreboard players operation @s tmp /= 10 const
execute if score sr_difficulty settings matches 0..1 run scoreboard players operation @s temp %= 10 const

execute if score sr_difficulty settings matches 0..1 run title @s actionbar [{"text": "Distance to spider: ","color": "#ff6600"},{"score": {"name": "@s","objective": "tmp"}},".",{"score": {"name": "@s","objective": "temp"}},"m"]
execute if score sr_difficulty settings matches 2 run title @s actionbar [{"text": "Distance to spider: ","color": "#ff6600"},{"text":"666","obfuscated": true},".",{"text":"6","obfuscated": true},"m"]