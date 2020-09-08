execute if score #ze_gamestate tmp matches 1 as @a run function gm:start
execute if score #ze_gamestate tmp matches 2 run function gm:countdown
execute if score #ze_gamestate tmp matches 3 run function gm:game_logic
execute if score #ze_gamestate tmp matches 4 run function gm:calculate_winner
