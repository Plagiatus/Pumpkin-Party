# Calculate points, who won, grant the advancement and reset the game.
# @calledBy: tot:game_logic
# @author: dragonmaster95

#Anounce treats collected
# execute as @a[team=tot_play,scores={tot_treats=0..}] run tellraw @s ["",{"selector":"@s","color":"gold"},{"text":" collected ","color":"green"},{"score":{"name":"@s","objective":"tot_treats"},"color":"white"},{"text":" Chocolate Emeralds.","color":"green"}]

#Find maximum points for point calculation
scoreboard players operation #tot_max tmp = #tot_max const
scoreboard players operation #tot_max tmp > @a[team=tot_play] tot_treats
execute as @a[team=tot_play] run scoreboard players operation @s tot_highscore > @s tot_treats
execute as @a[team=tot_play] run scoreboard players operation @s tmp = @s tot_treats
#Calculate points
scoreboard players operation @a[team=tot_play] tot_treats *= #maxPoints const
scoreboard players operation @a[team=tot_play] tot_treats /= #tot_max tmp
#Add points to score and anounce results for each player
execute as @a[team=tot_play] run scoreboard players operation @s points += @s tot_treats
# execute as @a[team=tot_play] at @s run tellraw @a[limit=1,sort=nearest] ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"tot_treats"},"color":"dark_green"}]

# leaderboard
tellraw @a [{"text": "\nTrick or Treat Results","color":"#ff6600"},"\n======================"]
tag @a[team=tot_play] add tot_high
scoreboard players set #rank tmp 1
function tot:leaderboard

#Find winner
scoreboard players set #tot_gamestate tot_treats 0
scoreboard players operation #tot_gamestate tot_treats > @a[team=tot_play] tot_treats
execute as @a[team=tot_play] if score @s tot_treats = #tot_gamestate tot_treats run tag @s add tot_winner
advancement grant @a[tag=tot_winner] only tot:minigame_win

execute as @a[tag=tot_winner] if score @s tot_highscore >= #tot_highscore tot_highscore run tag @s add tot_highscore 
execute as @a[tag=tot_highscore] run scoreboard players operation #tot_highscore tot_highscore > @s tot_highscore
execute if entity @a[tag=tot_highscore] run data merge block 382 87 514 {Text2:'{"color":"gold","score":{"name":"@a[tag=tot_highscore,limit=1]","objective":"tot_highscore"}}',Text4:'{"color":"#FF6600","selector":"@a[tag=tot_highscore,limit=1]"}'}

#reset scores and end game
tp @e[tag=tot_doorMob] ~ ~-500 ~
fill 1038 67 -986 957 69 -933 structure_void replace redstone_torch
clear @a[team=tot_play] emerald
scoreboard players reset * tot_treats
tag @a[team=tot_play] remove tot_tricking
title @a[team=tot_play] reset
title @a[team=tot_play] clear
team leave @a[team=tot_play]
scoreboard players set #tot_gamestate tmp 0
tag @a remove tot_winner
tag @a remove tot_highscore
schedule function pp:all_games/end 7s

scoreboard players reset @e[name=tot_doorbell] points