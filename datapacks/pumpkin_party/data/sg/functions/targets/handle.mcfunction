# check if needs to be deactivated
execute as @s[nbt=!{Passengers:[]}] run function sg:targets/deactivate

# animate deactivation
execute as @s[tag=sg_deactivating] run function sg:targets/anim_deactivation

# timer
scoreboard players remove @s[scores={timer=0..}] timer 1

# movement
function sg:targets/move

# going into statis
execute at @s[tag=sg_deactivating,scores={timer=0}] run function sg:targets/statis

# respawning
execute at @s[tag=sg_statis,scores={timer=0}] run function sg:targets/respawn