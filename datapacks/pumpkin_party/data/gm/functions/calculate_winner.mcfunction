scoreboard players set #ze_gamestate ze_points 0
scoreboard players operation #ze_gamestate ze_points > @a[team=ze_play] ze_points
execute as @a[team=ze_play] if score @s ze_points = #ze_gamestate ze_points run advancement grant @s only pumpkinparty:gm/minigame_win

scoreboard players set #ze_gamestate tmp 0