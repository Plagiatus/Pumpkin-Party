# Setup
# @calledBy: pc:main
# @author: dragonmaster95


#Teleport players to areas and mark them as occupied places (pc_occupied)
tp @a 1013 102 1000
schedule function pc:prepare_areas 20t


scoreboard players set #pc_start timer 100
title @a[team=pc_play] reset
title @a[team=pc_play] times 0 120 0
title @a[team=pc_play] title {"text":"Loading...","color":"white"}