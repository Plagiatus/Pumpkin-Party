# Cleanrs arena of zombies etc. and kicks players out of the game
# @calledBy: gm:win, gm:lose
# @author: dragonmaster95

#Cleanup
tp @e[tag=gm,type=zombie] ~ -50 ~
kill @e[type=item,x=507,y=60,z=498,dx=-489,dy=15,dz=516]
time set 18000

#Put players back into the lobby
scoreboard players reset * gm_alive
effect clear @a[tag=gm_play]
team leave @a[tag=gm_play]
tag @a remove gm_play
function pp:all_games/end