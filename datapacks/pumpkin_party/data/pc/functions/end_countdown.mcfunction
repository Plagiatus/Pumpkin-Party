#Setup
execute as @a[team=pc_play] run function pc:reset_hotbar
scoreboard players set $ticks timer 4800
scoreboard objectives setdisplay sidebar pc_points
scoreboard players set @a pc_progress 0
advancement grant @a only pc:minigame_play
function pp:all_games/start
execute as @e[type=area_effect_cloud,limit=1,tag=pc_occupied,sort=nearest] at @s run function pc:next_template


scoreboard players set #pc_gamestate tmp 3