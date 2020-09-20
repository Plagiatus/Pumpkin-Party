# check for hit slimes
tag @e[tag=sg_slime,nbt={HurtTime:10s}] add sg_was_hit

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

#TODO add particle effect to golden ghost