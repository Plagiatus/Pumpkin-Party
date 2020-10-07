# Load function
# @calledBy: minecraft:#load
# @author: dragonmaster95

#Time the game runs for
scoreboard players set #gm_maxTime const 1200

#For conversion into seconds
scoreboard players set #12 const 12
scoreboard players set #20 const 20
scoreboard players set #60 const 60

#Points during game
scoreboard objectives add gm_points dummy
scoreboard objectives add gm_highscore_sec dummy
scoreboard objectives add gm_highscore_min dummy
scoreboard objectives add gm_alive dummy {"text":"Players alive","color":"#FF6600"}

#Player-Zombie id
scoreboard objectives add gm_id dummy

team add gm_play
team add gm_dead
team modify gm_dead color dark_gray
team modify gm_play friendlyFire false