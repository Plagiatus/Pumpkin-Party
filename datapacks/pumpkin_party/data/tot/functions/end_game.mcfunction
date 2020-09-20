# Calculate points, who won, grant the advancement and reset the game.
# @calledBy: tot:game_logic
# @author: dragonmaster95

#Anounce treats collected
execute as @a[team=tot_play,scores={tot_treats=0..}] run tellraw @s ["",{"selector":"@s","color":"gold"},{"text":" collected ","color":"green"},{"score":{"name":"@s","objective":"tot_treats"},"color":"white"},{"text":" Chocolate Emeralds.","color":"green"}]

#Find maximum points for point calculation
scoreboard players operation #tot_max tmp = #tot_max const
scoreboard players operation #tot_max tmp > @a[team=tot_play] tot_treats
#Calculate points
scoreboard players operation @a[team=tot_play] tot_treats *= #maxPoints const
scoreboard players operation @a[team=tot_play] tot_treats /= #tot_max tmp
#Add points to score and anounce results for each player
execute as @a[team=tot_play] run scoreboard players operation @s points += @s tot_treats
execute as @a[team=tot_play] at @s run tellraw @a[limit=1,sort=nearest] ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"tot_treats"},"color":"dark_green"}]

#Find winner
scoreboard players set #tot_gamestate tot_treats 0
scoreboard players operation #tot_gamestate tot_points > @a[team=tot_play] tot_points
execute as @a[team=tot_play] if score @s tot_points = #tot_gamestate tot_points run advancement grant @s only tot:minigame_win

#reset scores and end game
scoreboard players set @a[team=tot_play] tot_treats 0
tag @a[team=tot_play] remove tot_tricking
title @a[team=tot_play] reset
title @a[team=tot_play] clear
team leave @a[team=tot_play]
scoreboard players set #tot_gamestate tmp 0
schedule function pp:all_games/end 7s