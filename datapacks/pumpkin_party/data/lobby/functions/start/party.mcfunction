tellraw @a [{"text":"Let's start this party!\n","color":"#ff6600"},{"text":"Selected Minigames:","color":"gray"}]

execute if score bc_in_party settings matches 1 if score bc_difficulty settings matches 0 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score bc_in_party settings matches 1 if score bc_difficulty settings matches 1 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score bc_in_party settings matches 1 if score bc_difficulty settings matches 2 run tellraw @a [{"text":"Brewing Contest (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score gm_in_party settings matches 1 if score gm_difficulty settings matches 0 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score gm_in_party settings matches 1 if score gm_difficulty settings matches 1 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score gm_in_party settings matches 1 if score gm_difficulty settings matches 2 run tellraw @a [{"text":"Graveyard Mayhem (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score pc_in_party settings matches 1 if score pc_difficulty settings matches 0 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score pc_in_party settings matches 1 if score pc_difficulty settings matches 1 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score pc_in_party settings matches 1 if score pc_difficulty settings matches 2 run tellraw @a [{"text":"Pumpkin Carving (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score sg_in_party settings matches 1 if score sg_difficulty settings matches 0 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score sg_in_party settings matches 1 if score sg_difficulty settings matches 1 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score sg_in_party settings matches 1 if score sg_difficulty settings matches 2 run tellraw @a [{"text":"Shooting Gallery (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score sr_in_party settings matches 1 if score sr_difficulty settings matches 0 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score sr_in_party settings matches 1 if score sr_difficulty settings matches 1 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score sr_in_party settings matches 1 if score sr_difficulty settings matches 2 run tellraw @a [{"text":"Spider Run (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

execute if score tot_in_party settings matches 1 if score tot_difficulty settings matches 0 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"normal","color":"#84A887"},")"]
execute if score tot_in_party settings matches 1 if score tot_difficulty settings matches 1 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"hard","color":"#AA8686"},")"]
execute if score tot_in_party settings matches 1 if score tot_difficulty settings matches 2 run tellraw @a [{"text":"Trick or Treat (","color":"gray"},{"text":"nightmare","color":"#AD5454"},")"]

