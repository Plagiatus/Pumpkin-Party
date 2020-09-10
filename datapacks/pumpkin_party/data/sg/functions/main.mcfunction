
execute if score $sg_phase points matches 1 run function sg:waiting
execute if score $sg_phase points matches 2 run function sg:running

# TODO: handle offline/returning/non-playing players
