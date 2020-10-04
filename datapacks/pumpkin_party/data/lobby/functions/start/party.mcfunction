scoreboard players set #games_to_play settings 0
execute if score bc_in_party settings matches 1 run scoreboard players add #games_to_play settings 1
execute if score gm_in_party settings matches 1 run scoreboard players add #games_to_play settings 1
execute if score pc_in_party settings matches 1 run scoreboard players add #games_to_play settings 1
execute if score sg_in_party settings matches 1 run scoreboard players add #games_to_play settings 1
execute if score sr_in_party settings matches 1 run scoreboard players add #games_to_play settings 1
execute if score tot_in_party settings matches 1 run scoreboard players add #games_to_play settings 1

scoreboard players operation #bc settings = bc_in_party settings
scoreboard players operation #gm settings = gm_in_party settings
scoreboard players operation #pc settings = pc_in_party settings
scoreboard players operation #sg settings = sg_in_party settings
scoreboard players operation #sr settings = sr_in_party settings
scoreboard players operation #tot settings = tot_in_party settings

scoreboard players reset * points

execute if score #games_to_play settings matches 2.. run function pp:party/next
execute if score #games_to_play settings matches 2.. run scoreboard players set #party_timer timer 280

execute if score #games_to_play settings matches 2.. run function lobby:signs/disable_all

execute if score #games_to_play settings matches ..1 run tellraw @s [{"text":"Not enough minigames selected to start the party!","color":"dark_red"},{"text":" (Select at least 2 minigames)\n","color":"gray"}]
execute if score #games_to_play settings matches 2.. run tellraw @a [{"text":"Let's start this party!\n","color":"#ff6600"},{"text":"Selected Minigames:","color":"gray"}]

execute if score #games_to_play settings matches 2.. if score bc_in_party settings matches 1 if score bc_difficulty settings matches 0 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score bc_in_party settings matches 1 if score bc_difficulty settings matches 1 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score bc_in_party settings matches 1 if score bc_difficulty settings matches 2 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score #games_to_play settings matches 2.. if score gm_in_party settings matches 1 if score gm_difficulty settings matches 0 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score gm_in_party settings matches 1 if score gm_difficulty settings matches 1 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score gm_in_party settings matches 1 if score gm_difficulty settings matches 2 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score #games_to_play settings matches 2.. if score pc_in_party settings matches 1 if score pc_difficulty settings matches 0 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score pc_in_party settings matches 1 if score pc_difficulty settings matches 1 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score pc_in_party settings matches 1 if score pc_difficulty settings matches 2 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score #games_to_play settings matches 2.. if score sg_in_party settings matches 1 if score sg_difficulty settings matches 0 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score sg_in_party settings matches 1 if score sg_difficulty settings matches 1 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score sg_in_party settings matches 1 if score sg_difficulty settings matches 2 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score #games_to_play settings matches 2.. if score sr_in_party settings matches 1 if score sr_difficulty settings matches 0 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score sr_in_party settings matches 1 if score sr_difficulty settings matches 1 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score sr_in_party settings matches 1 if score sr_difficulty settings matches 2 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score #games_to_play settings matches 2.. if score tot_in_party settings matches 1 if score tot_difficulty settings matches 0 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score #games_to_play settings matches 2.. if score tot_in_party settings matches 1 if score tot_difficulty settings matches 1 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score #games_to_play settings matches 2.. if score tot_in_party settings matches 1 if score tot_difficulty settings matches 2 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]
