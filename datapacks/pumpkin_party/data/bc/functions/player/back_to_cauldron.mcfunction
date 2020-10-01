tag @s add self
execute as @e[tag=bc_marker] if score @s bc_id = @a[limit=1,tag=self] bc_id run tp @a[tag=self] @s
tag @s remove self

# correct towards cauldron
execute at @s[x=540,y=70,z=-521,dx=20,dy=2,dz=4] run tp @s ~ ~ ~ 180 ~
execute at @s[x=567,y=70,z=-511,dx=4,dy=2,dz=20] run tp @s ~ ~ ~ -90 ~
execute at @s[x=541,y=70,z=-483,dx=20,dy=2,dz=4] run tp @s ~ ~ ~ 0 ~
execute at @s[x=530,y=70,z=-508,dx=4,dy=2,dz=16] run tp @s ~ ~ ~ 90 ~

scoreboard players set @s bc_click 0