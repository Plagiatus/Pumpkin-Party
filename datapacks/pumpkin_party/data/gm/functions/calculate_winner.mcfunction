# Calculate points, who won, and grant the advancement.
# @calledBy: gm:win, gm:lose
# @author: dragonmaster95


#Calculate points
scoreboard players operation @a[team=ze_play] timer /= #12 const
scoreboard players operation @a[team=ze_play] ze_points = #maxPoints const
execute as @a[team=ze_play] run scoreboard players operation @s ze_points -= @s timer

#Get players with largest score
scoreboard players set #ze_gamestate ze_points 0
scoreboard players operation #ze_gamestate ze_points > @a[team=ze_play] ze_points
execute as @a[team=ze_play] if score @s ze_points = #ze_gamestate ze_points run advancement grant @s only gm:minigame_win

#Stop Game
scoreboard players set #ze_gamestate tmp 0