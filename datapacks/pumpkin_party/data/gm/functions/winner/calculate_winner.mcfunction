# Calculate points, who won, and grant the advancement.
# @calledBy: gm:win, gm:lose
# @author: dragonmaster95


#Calculate point base (aka "How many seconds do you need to live to get one point")
scoreboard players operation #gm_pointConversion tmp = #gm_maxTime const
scoreboard players operation #gm_pointConversion tmp /= #maxPoints const

execute as @a[tag=gm_play] run scoreboard players operation @s tmp = #gm_maxTime const
execute as @a[tag=gm_play] run scoreboard players operation @s tmp -= @s timer

#Calculate points
scoreboard players operation @a[tag=gm_play] timer /= #gm_pointConversion tmp
scoreboard players operation @a[tag=gm_play] gm_points = #maxPoints const
execute as @a[tag=gm_play] run scoreboard players operation @s gm_points -= @s timer

# leaderboard

tellraw @a [{"text": "\nGraveyard Mayhem Results","color":"#ff6600"},"\n======================"]
tag @a[tag=gm_play] add gm_high
scoreboard players set #rank tmp 1
function gm:winner/display

#Get players with largest score
scoreboard players set #gm_gamestate gm_points 0
scoreboard players operation #gm_gamestate gm_points > @a[tag=gm_play] gm_points
execute as @a[tag=gm_play] if score @s gm_points = #gm_gamestate gm_points run tag @s add gm_winner
advancement grant @a[tag=gm_winner] only gm:minigame_win

execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore > @s tmp

execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore_sec = @s gm_highscore
execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore_sec /= #20 const
execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore_min = @s gm_highscore_sec
execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore_sec %= #60 const
execute as @a[tag=gm_play] run scoreboard players operation @s gm_highscore_min /= #60 const

execute as @a[tag=gm_winner] if score @s gm_highscore >= #gm_highscore gm_highscore run tag @s add gm_highscore 
execute as @a[tag=gm_highscore] run scoreboard players operation #gm_highscore gm_highscore = @s gm_highscore
execute as @a[tag=gm_highscore] run scoreboard players operation #gm_highscore gm_highscore_sec = @s gm_highscore_sec
execute as @a[tag=gm_highscore] run scoreboard players operation #gm_highscore gm_highscore_min = @s gm_highscore_min
execute as @a[tag=gm_highscore] if score @s gm_highscore_sec matches ..9 run data merge block 394 87 514 {Text2:'[{"color":"gold","score":{"name":"@a[tag=gm_highscore]","objective":"gm_highscore_min"}},{"text":":0"},{"score":{"name":"@a[tag=gm_highscore]","objective":"gm_highscore_sec"}}]',Text4:'{"color":"#FF6600","selector":"@a[tag=gm_highscore]"}'}
execute as @a[tag=gm_highscore] if score @s gm_highscore_sec matches 10.. run data merge block 394 87 514 {Text2:'[{"color":"gold","score":{"name":"@a[tag=gm_highscore]","objective":"gm_highscore_min"}},{"text":":"},{"score":{"name":"@a[tag=gm_highscore]","objective":"gm_highscore_sec"}}]',Text4:'{"color":"#FF6600","selector":"@a[tag=gm_highscore]"}'}

tag @a remove gm_winner
tag @a remove gm_highscore

#Stop Game
scoreboard players set #gm_gamestate tmp 0