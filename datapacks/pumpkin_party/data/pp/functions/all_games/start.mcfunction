scoreboard players add #global game_id 1
scoreboard players operation @a game_id = #global game_id

execute as @a[scores={costume=222}] run function lobby:costume/cave_spider

clear @a orange_dye
clear @a red_dye

scoreboard players set #game_ongoing settings 1

function lobby:signs/disable_all