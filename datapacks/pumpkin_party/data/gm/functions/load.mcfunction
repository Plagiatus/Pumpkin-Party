# Load function
# @calledBy: minecraft:#load
# @author: dragonmaster95

#For conversion into seconds
scoreboard players set #12 const 12
scoreboard players set #20 const 20

#Points during game
scoreboard objectives add gm_points dummy
#Player-Zombie id
scoreboard objectives add gm_id dummy

team add gm_play
team modify gm_play friendlyFire false