# Load function
# @calledBy: minecraft:#load
# @author: dragonmaster95

#For conversion into seconds
scoreboard players set #20 const 20

#Points during game
scoreboard objectives add ze_points dummy
#Player-Zombie id
scoreboard objectives add ze_id dummy

team add ze_play
team modify ze_play friendlyFire false