# Calculate points, who won, grant the advancement and reset the game.
# @calledBy: pc:game_logic
# @author: dragonmaster95

#Find maximum points for point calculation
scoreboard players operation #pc_max tmp = #pc_max const
scoreboard players operation #pc_max tmp > @a[team=pc_play] pc_points
#Calculate points
scoreboard players operation @a[team=pc_play] pc_points *= #maxPoints const
scoreboard players operation @a[team=pc_play] pc_points /= #pc_max tmp
#Add points to score and anounce results for each player
execute as @a[team=pc_play] run scoreboard players operation @s points += @s pc_points
execute as @a[team=pc_play] at @s run tellraw @a[limit=1,sort=nearest] ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"pc_points"},"color":"dark_green"}]

#Find winner
scoreboard players set #pc_gamestate pc_points 0
scoreboard players operation #pc_gamestate pc_points > @a[team=pc_play] pc_points
execute as @a[team=pc_play] if score @s pc_points = #pc_gamestate pc_points run advancement grant @s only pc:minigame_win

#reset scores and end game
clear @a[team=pc_play] smooth_red_sandstone
clear @a[team=pc_play] diamond_pickaxe

scoreboard players reset @e[tag=pc_occupied] tmp
tag @e[tag=pc_occupied] remove pc_occupied
scoreboard players reset * pc_points
title @a[team=pc_play] reset
title @a[team=pc_play] clear

team leave @a[team=pc_play]
scoreboard players set #pc_gamestate tmp 0
schedule function pp:all_games/end 7s