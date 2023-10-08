# handle timer
scoreboard players remove $ticks timer 1
scoreboard players operation #tmp tmp = $ticks timer
scoreboard players operation #tmp tmp %= 20 const
execute if score #tmp tmp matches 0 run function pp:util/display_timer
# display recipe in actionbar
execute if score #tmp tmp matches 0 if score bc_difficulty settings matches ..1 as @e[tag=bc_cauldron] at @s run function bc:recipe/display/display

# handle cauldrons
execute as @e[tag=bc_cauldron] at @s run function bc:cauldron/handle

# make key items stay in players inventory
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}] run data merge entity @s {PickupDelay:0}
#execute as @e[type=item,nbt={Item:{id:"minecraft:nether_brick"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}
#execute as @a[nbt=!{Inventory:[{id:"minecraft:nether_brick",Slot:-106b}]}] run function bc:player/reset_important_items

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

# remove handropchance from piglins so no golden swords drop
execute as @e[type=zombified_piglin,tag=!d_removed] run data merge entity @s {Tags:["d_removed"],HandDropChances:[0.0f,0.0f]}

# leaving players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function bc:player/too_late_join
execute as @a[x=551,y=107,z=-498,distance=..1,team=bc_play] run function bc:player/too_late_join

# players who want back to the cauldon
execute as @a[scores={bc_click=1..}] run function bc:player/back_to_cauldron

# player effects
effect give @a resistance 1 10 true

# check for end of round
execute if score $ticks timer matches ..0 run function bc:end