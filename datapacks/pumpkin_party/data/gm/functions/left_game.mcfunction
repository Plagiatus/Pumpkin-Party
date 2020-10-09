# Function that runs if a player joins back while the game is running:
# @calledBy: gm:game_logic
# @author: dragonmaster95

#If it's the same game
execute if score @s game_id = #global game_id run tellraw @s ["",{"text":"Welcome back!\n","color":"gold"},{"text":"While you were away a zombie caught you.","color":"gold"}]
execute if score @s game_id = #global game_id run advancement grant @s only gm:a_new_zombie
execute if score @s game_id = #global game_id run execute if score #gm_timer timer matches 1100.. run advancement grant @s only gm:slowest_of_them_all

#If it's from a different game
execute unless score @s game_id = #global game_id run team join gm_play
execute unless score @s game_id = #global game_id run scoreboard players set @s timer 1200

gamemode spectator
scoreboard players set @s left_game 0