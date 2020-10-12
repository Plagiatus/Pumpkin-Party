scoreboard objectives add sr_distance dummy
scoreboard objectives add sr_time dummy
scoreboard objectives add sr_tunnel dummy
scoreboard objectives add sr_highscore dummy

team add sr_play
team modify sr_play collisionRule never
team modify sr_play friendlyFire false

scoreboard players set -1 const -1
scoreboard players set 2 const 2
scoreboard players set 5 const 5
scoreboard players set 7 const 7
scoreboard players set 10 const 10
scoreboard players set 2000 const 2000

# spider speed
scoreboard players set #normal sr_distance 20
scoreboard players set #hard sr_distance 24
scoreboard players set #nightmare sr_distance 27

# amount of tunnel segments
scoreboard players set #normal sr_tunnel 20
scoreboard players set #hard sr_tunnel 25
scoreboard players set #nightmare sr_tunnel 30

# minimum speed to get to the end without being caught
scoreboard players operation #normal sr_time = #normal sr_tunnel
scoreboard players operation #hard sr_time = #hard sr_tunnel
scoreboard players operation #nightmare sr_time = #nightmare sr_tunnel
scoreboard players operation #normal sr_time *= 2000 const
scoreboard players operation #hard sr_time *= 2000 const
scoreboard players operation #nightmare sr_time *= 2000 const
scoreboard players operation #normal sr_time /= #normal sr_distance 
scoreboard players operation #hard sr_time /= #hard sr_distance 
scoreboard players operation #nightmare sr_time /= #nightmare sr_distance 