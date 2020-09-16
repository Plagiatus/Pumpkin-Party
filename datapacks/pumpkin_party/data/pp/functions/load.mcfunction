function pp:resetgamerules

scoreboard objectives add points dummy
scoreboard objectives add const dummy
scoreboard objectives add tmp dummy

scoreboard objectives add timer dummy 

#The scoreboard to check if the player joined the same game they left or if it's a different one
scoreboard objectives add game_id dummy 

scoreboard objectives add left_game minecraft.custom:minecraft.leave_game 

#The scoreboard to check if the player joined the same game they left or if it's a different one
scoreboard players set #maxPoints const 100 