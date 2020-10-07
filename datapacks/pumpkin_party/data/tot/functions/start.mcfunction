# Setup
# @calledBy: tot:main
# @author: dragonmaster95

team join tot_play @a
scoreboard players set #tot_start timer 100
title @a[team=tot_play] reset
title @a[team=tot_play] times 0 100 0
title @a[team=tot_play] subtitle {"translate":"Doors open in %s","color":"white","with":[{"translate":"5","color":"dark_purple"}]}
title @a[team=tot_play] title {"translate":"Trick-or-Treat","color":"dark_purple"}

tp @e[tag=tot_doorMob] ~ ~-500 ~
fill 1038 66 -986 957 70 -933 structure_void replace redstone_torch

function pp:all_games/start

tellraw @a ["",{"text":"\nTrick or Treat","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nGo from door to door to collect candy.\nWitches steal your candy!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Collect the most candy.","color":"gold"}]
execute if score tot_difficulty settings matches 0 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Normal","color":"#84A887"}]
execute if score tot_difficulty settings matches 1 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Hard","color":"#AA8686"}]
execute if score tot_difficulty settings matches 2 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Nightmare","color":"#AD5454"}]
tellraw @a ""

tp @a[team=tot_play] 996 69 -973
gamemode adventure @a[team=tot_play]
advancement grant @a only tot:minigame_play
scoreboard players set @a tot_doorsKnocked 0
scoreboard players set @a tot_treats 0
scoreboard players add @a tot_highscore 0
scoreboard players add #tot_highscore tot_highscore 0

scoreboard players set #tot_gamestate tmp 2