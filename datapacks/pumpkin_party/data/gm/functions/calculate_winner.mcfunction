# Calculate points, who won, and grant the advancement.
# @calledBy: gm:win, gm:lose
# @author: dragonmaster95


#Calculate points
scoreboard players operation @a[team=gm_play] timer /= #12 const
scoreboard players operation @a[team=gm_play] gm_points = #maxPoints const
execute as @a[team=gm_play] run scoreboard players operation @s gm_points -= @s timer

#Get players with largest score
scoreboard players set #gm_gamestate gm_points 0
scoreboard players operation #gm_gamestate gm_points > @a[team=gm_play] gm_points
execute as @a[team=gm_play] if score @s gm_points = #gm_gamestate gm_points run advancement grant @s only gm:minigame_win

#Stop Game
scoreboard players set #gm_gamestate tmp 0