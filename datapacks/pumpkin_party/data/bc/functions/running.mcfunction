# handle timer
scoreboard players remove $ticks timer 1
function pp:util/display_timer

# handle cauldrons
execute as @e[tag=bc_cauldron] at @s run function bc:cauldron/handle

# make key items stay in players inventory
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_brick"}}] run data merge entity @s {PickupDelay:0}

# item cooldowns
