team add tot_play
team modify tot_play color dark_purple

scoreboard players set #-1 const -1
scoreboard players set #20 const 20
scoreboard players set #50 const 50

#Amount of Candy you need to get #maxPoints points
scoreboard players set #tot_max const 50

scoreboard objectives add tot_treats dummy {"color":"#FF6600","text":"Chocolate Emeralds"}
scoreboard objectives add tot_highscore dummy
scoreboard objectives add tot_doorsKnocked dummy