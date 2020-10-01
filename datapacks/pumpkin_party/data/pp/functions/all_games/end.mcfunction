# move players back to mansion
tp @a 400 69 500 90 -5
spawnpoint @a 400 69 500

# set them to adventure
gamemode adventure @a

# TODO: check whether there is a party going and continue the cycle as necessary
#set correct scoreboard to sidebar
scoreboard objectives setdisplay sidebar points



#TODO: maybe leaving any teams they were in and clearing any effects? 
team leave @a
execute as @a unless score @s costume matches 121 run function lobby:costume/basket
execute as @a if score @s costume matches 121 run function lobby:costume/full_basket