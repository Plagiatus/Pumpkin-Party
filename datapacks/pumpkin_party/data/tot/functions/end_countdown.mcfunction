# Stops the countdown and starts the game
# @calledBy: tot:countdown
# @calls: 
# @author: dragonmaster95

tag @a remove tot_tricking
title @a[team=tot_play] reset
title @a[team=tot_play] clear
scoreboard objectives setdisplay sidebar tot_treats
scoreboard players set $ticks timer 3600

scoreboard players set #tot_gamestate tmp 3