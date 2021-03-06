# check for hit magma_cubes
tag @e[tag=sg_magma_cube,nbt={HurtTime:10s}] add sg_was_hit

# check if needs to be deactivated
execute as @s[tag=!sg_deactivating,tag=!sg_stasis] if data entity @s Passengers[{Tags:["sg_was_hit"]}] run function sg:targets/deactivate
kill @e[tag=sg_was_hit]

# animate deactivation
execute as @s[tag=sg_deactivating] run function sg:targets/anim_deactivation

# timer
scoreboard players remove @s[scores={timer=0..}] timer 1

# movement
function sg:targets/move

# going into stasis
execute at @s[tag=sg_deactivating,scores={timer=0}] run function sg:targets/stasis

# respawning
execute at @s[tag=sg_stasis,scores={timer=0}] run function sg:targets/respawn

#add particle effect to golden ghost
execute at @s[tag=sg_golden_ghost,tag=!sg_stasis] run particle minecraft:crit ~ ~2 ~ 0.3 0.3 0.1 0 1 normal