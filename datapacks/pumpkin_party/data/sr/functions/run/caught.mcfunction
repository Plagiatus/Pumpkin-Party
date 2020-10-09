#run as player once they're caught
gamemode spectator
tag @s add sr_in_tunnel
tag @s add sr_caught
effect give @s blindness 2 0 true

scoreboard players operation #seconds tmp = @s sr_time
scoreboard players operation #mseconds tmp = @s sr_time
scoreboard players operation #seconds tmp /= 20 const
scoreboard players operation #minutes tmp = #seconds tmp
scoreboard players operation #minutes tmp /= 60 const
scoreboard players operation #seconds tmp %= 60 const
scoreboard players operation #mseconds tmp %= 20 const
scoreboard players operation #mseconds tmp *= 5 const


execute if entity @s[tag=!sr_end] if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a [{"color": "red","text": ""},{"selector": "@s","color": "dark_red"}," got caught by the spider after ",{"score": {"name": "#minutes","objective": "tmp"}},":0",{"score": {"name": "#seconds","objective": "tmp"}},".0",{"score": {"name": "#mseconds","objective": "tmp"}}]
execute if entity @s[tag=!sr_end] if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a [{"color": "red","text": ""},{"selector": "@s","color": "dark_red"}," got caught by the spider after ",{"score": {"name": "#minutes","objective": "tmp"}},":",{"score": {"name": "#seconds","objective": "tmp"}},".0",{"score": {"name": "#mseconds","objective": "tmp"}}]
execute if entity @s[tag=!sr_end] if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a [{"color": "red","text": ""},{"selector": "@s","color": "dark_red"}," got caught by the spider after ",{"score": {"name": "#minutes","objective": "tmp"}},":0",{"score": {"name": "#seconds","objective": "tmp"}},".",{"score": {"name": "#mseconds","objective": "tmp"}}]
execute if entity @s[tag=!sr_end] if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a [{"color": "red","text": ""},{"selector": "@s","color": "dark_red"}," got caught by the spider after ",{"score": {"name": "#minutes","objective": "tmp"}},":",{"score": {"name": "#seconds","objective": "tmp"}},".",{"score": {"name": "#mseconds","objective": "tmp"}}]

advancement grant @s only sr:spider_candy
advancement grant @s[scores={sr_tunnel=..3}] only sr:lame_donkey

#check how many players are still left running
execute unless entity @a[team=sr_play,tag=!sr_caught] run function sr:run/caught_everyone