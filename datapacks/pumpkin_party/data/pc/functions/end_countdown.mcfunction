#Setup
execute if score pc_difficulty settings matches 2 run give @s minecraft:smooth_red_sandstone{ench:[],CanPlaceOn:["minecraft:black_terracotta","minecraft:smooth_red_sandstone"],HideFlags:31,Unbreakable:1,display:{Name:'"Pumpkin Filler"',Lore:['"Use this to fill in a block"','" you removed by mistake."','" "','"You only have a limited amount!"']}} 10
execute as @a[team=pc_play] run function pc:reset_hotbar
scoreboard players set $ticks timer 4800
scoreboard objectives setdisplay sidebar pc_points
scoreboard players set @a pc_progress 0
advancement grant @a only pc:minigame_play
function pp:all_games/start
execute as @e[type=minecraft:area_effect_cloud,tag=pc_occupied] at @s run function pc:next_template


scoreboard players set #pc_gamestate tmp 3