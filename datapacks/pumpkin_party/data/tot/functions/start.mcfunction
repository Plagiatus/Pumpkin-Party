# Setup
# @calledBy: tot:main
# @author: dragonmaster95

team join tot_play @a
scoreboard players set #tot timer 100
title @a[team=tot_play] reset
title @a[team=tot_play] times 0 100 0
title @a[team=tot_play] subtitle {"translate":"Doors open in %s","color":"white","with":[{"translate":"5","color":"dark_purple"}]}
title @a[team=tot_play] title {"translate":"Trick-or-Treat","color":"dark_purple"}

tp @a[team=tot_play] 996 69 -973
gamemode adventure @a[team=tot_play]
advancement grant @a only tot:minigame_play
scoreboard players set @a tot_doorsKnocked 0
scoreboard players set @a tot_treats 0

scoreboard players set #tot_gamestate tmp 2