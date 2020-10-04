function pp:resetgamerules

scoreboard objectives add points dummy
scoreboard objectives add const dummy
scoreboard objectives add tmp dummy
scoreboard objectives add temp dummy
scoreboard objectives add settings dummy

scoreboard objectives add timer dummy 

#The scoreboard to check if the player joined the same game they left or if it's a different one
scoreboard objectives add game_id dummy 

scoreboard objectives add left_game minecraft.custom:minecraft.leave_game 

#The scoreboard to check if the player joined the same game they left or if it's a different one
scoreboard players set #maxPoints const 100

scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 8 const 8

# set all games to "normal" difficulty, if not set otherwise yet. 0=normal, 1=hard, 2=nightmare
execute unless score bc_difficulty settings = bc_difficulty settings run scoreboard players set bc_difficulty settings 0
execute unless score gm_difficulty settings = gm_difficulty settings run scoreboard players set gm_difficulty settings 0
execute unless score pc_difficulty settings = pc_difficulty settings run scoreboard players set pc_difficulty settings 0
execute unless score sg_difficulty settings = sg_difficulty settings run scoreboard players set sg_difficulty settings 0
execute unless score sr_difficulty settings = sr_difficulty settings run scoreboard players set sr_difficulty settings 0
execute unless score tot_difficulty settings = tot_difficulty settings run scoreboard players set tot_difficulty settings 0