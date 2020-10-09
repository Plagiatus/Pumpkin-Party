scoreboard players add #global game_id 1
scoreboard players operation @a game_id = #global game_id

execute as @a[scores={costume=222}] run function lobby:costume/spider
execute as @a[scores={costume=1}] run function lobby:costume/creeper
execute as @a[scores={costume=6}] run function lobby:costume/pufferfish
execute as @a[scores={costume=1000..}] run function lobby:costume/sneak_interaction_end
effect clear @s invisibility

scoreboard players reset @a left_game
clear @a music_disc_mellohi
clear @a orange_dye
clear @a red_dye

scoreboard players set #game_ongoing settings 1

function lobby:signs/disable_all