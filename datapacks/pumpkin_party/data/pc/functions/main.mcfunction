# GameState Manager
# @calledBy: minecraft:#tick
# @author: dragonmaster95
# @notes: the state is at 0 when the game stops

execute if score #pc_gamestate tmp matches 1 run function pc:start
execute if score #pc_gamestate tmp matches 2 run function pc:countdown
execute if score #pc_gamestate tmp matches 3 run function pc:game_logic
