# handle timer
scoreboard players remove $ticks timer 1
function pp:util/display_timer

# handle cauldrons
execute as @e[tag=bc_cauldron] at @s run function bc:cauldron/handle

# make key items stay in players inventory
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_brick"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}
execute as @a[nbt=!{Inventory:[{id:"minecraft:nether_brick",Slot:-106b}]}] run function bc:player/reset_important_items

# cooldowns
scoreboard players remove #apple bc_timer 1
scoreboard players remove #nether_wart bc_timer 1
scoreboard players remove #slime bc_timer 1
scoreboard players remove @e[tag=bc_pumpkin] bc_timer 1

execute if score #apple bc_timer matches ..0 run function bc:ingredients/apple
execute if score #nether_wart bc_timer matches ..0 run function bc:ingredients/nether_wart
execute if score #slime bc_timer matches ..0 run function bc:ingredients/slime
execute as @e[tag=bc_pumpkin,scores={bc_timer=..0}] at @s run function bc:ingredients/pumpkin

# background cleanup
kill @e[type=experience_orb]

# leaving players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function bc:player/too_late_join
execute as @a[x=551,y=107,z=-498,distance=..1,team=bc_play] run function bc:player/too_late_join

# players who want back to the cauldon
execute as @a[scores={bc_click=1..}] run function bc:player/back_to_cauldron