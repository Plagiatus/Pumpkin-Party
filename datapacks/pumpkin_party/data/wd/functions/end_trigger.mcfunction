scoreboard players operation @a[gamemode=adventure,team=wd_play] wd_points = #wd_phase wd_phases
advancement grant @a[tag=!wd_mistake] only wd:perfect_game

scoreboard players set #wd_phase points 10
function wd:points/handle

schedule function wd:end 3s

# TODO figure out why this triggers twice