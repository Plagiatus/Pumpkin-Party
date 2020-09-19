# GameState Manager
# @calledBy: minecraft:#tick
# @author: dragonmaster95
# @notes: the state is at 0 when the game stops

execute if score #ze_gamestate tmp matches 1 run function tot:start
execute if score #ze_gamestate tmp matches 2 run function tot:countdown
execute if score #ze_gamestate tmp matches 3 run function tot:game_logic
