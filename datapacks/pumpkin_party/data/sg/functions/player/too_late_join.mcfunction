# check in which cubicle to put them
execute store result score #playeramount tmp if entity @a[team=sg_play]

execute if score #playeramount tmp matches 0 run tp @s -998.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 1 run tp @s -1001.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 2 run tp @s -995.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 3 run tp @s -1004.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 4 run tp @s -992.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 5 run tp @s -1007.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 6 run tp @s -989.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 7 run tp @s -1010.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 8 run tp @s -986.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 9 run tp @s -1013.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 10 run tp @s -983.0 59.5 -1006 facing -999 62 -1034


gamemode adventure

execute if score #playeramount tmp matches 0..10 run team join sg_play

# handle overflow
execute if score #playeramount tmp matches 11.. run tp @s -998.0 59.5 -1006 facing -999 62 -1034
execute if score #playeramount tmp matches 11.. run gamemode spectator
execute if score #playeramount tmp matches 11.. run tellraw @s [{"text": "I'm sorry, but this minigame is limited to 11 players. You seem to be more than 11 people.","color": "red"}]

scoreboard players set @s left_game 0

function pp:all_games/reset_player