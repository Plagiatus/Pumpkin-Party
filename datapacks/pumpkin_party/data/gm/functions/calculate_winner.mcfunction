# Calculate points, who won, and grant the advancement.
# @calledBy: gm:win, gm:lose
# @author: dragonmaster95


#Calculate point base (aka "How many seconds do you need to live to get one point")
scoreboard players operation #gm_pointConversion tmp = #gm_maxTime const
scoreboard players operation #gm_pointConversion tmp /= #maxPoints const

#Calculate points
scoreboard players operation @a[tag=gm_play] timer /= #gm_pointConversion tmp
scoreboard players operation @a[tag=gm_play] gm_points = #maxPoints const
execute as @a[tag=gm_play] run scoreboard players operation @s gm_points -= @s timer

#Get players with largest score
scoreboard players set #gm_gamestate gm_points 0
scoreboard players operation #gm_gamestate gm_points > @a[tag=gm_play] gm_points
execute as @a[tag=gm_play] if score @s gm_points = #gm_gamestate gm_points run advancement grant @s only gm:minigame_win

#Stop Game
scoreboard players set #gm_gamestate tmp 0