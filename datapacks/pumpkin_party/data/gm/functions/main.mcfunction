# GameState Manager
# @calledBy: minecraft:#tick
# @author: dragonmaster95
# @notes: the state is at 0 when the game stops

execute if score #ze_gamestate tmp matches 1 run function gm:start
execute if score #ze_gamestate tmp matches 2 run function gm:countdown
execute if score #ze_gamestate tmp matches 3 run function gm:game_logic
execute if score #ze_gamestate tmp matches 4 run function gm:calculate_winner
