# move players back to mansion
tp @a 400 69 500 90 -5
spawnpoint @a 400 69 500
scoreboard players set @a sound_delay 0
scoreboard players set @a costume_sneak 0

# set them to adventure
gamemode adventure @a

#set correct scoreboard to sidebar
scoreboard objectives setdisplay sidebar points

# check whether there is a party going and continue the cycle as necessary
execute if score #games_to_play settings matches 1.. run function pp:party/next
execute if score #games_to_play settings matches ..-1 run function pp:party/finished
execute if score #games_to_play settings matches ..0 run scoreboard players set #game_ongoing settings 0
execute if score #games_to_play settings matches ..0 run scoreboard objectives setdisplay sidebar candies
execute if score #games_to_play settings matches 0 as @a run scoreboard players operation @s candies += @s points
execute if score #games_to_play settings matches 0 as @a run scoreboard players set @a points 0
execute if score #games_to_play settings matches ..0 run schedule function lobby:signs/reset_all 1s

# leaving any teams they were in and clearing any effects
team leave @a

clear @s #pp:items_to_clear_from_minigames

# give correct basket
execute as @a unless score @s costume matches 1111 run function lobby:costume/basket
execute as @a if score @s costume matches 1111 run function lobby:costume/full_basket