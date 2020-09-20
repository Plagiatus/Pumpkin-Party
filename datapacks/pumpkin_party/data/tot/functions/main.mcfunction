# GameState Manager
# @calledBy: minecraft:#tick
# @author: dragonmaster95
# @notes: the state is at 0 when the game stops

execute if score #tot_gamestate tmp matches 1 run function tot:start
execute if score #tot_gamestate tmp matches 2 run function tot:countdown
execute if score #tot_gamestate tmp matches 3 run function tot:game_logic
execute if score #tot_gamestate tmp matches 4 run function tot:end_game
