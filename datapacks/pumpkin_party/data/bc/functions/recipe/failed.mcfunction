summon creeper ~ ~ ~ {Fuse:0,ignited:1b}

tag @s add self
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s times 5 40 5
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s subtitle [{"text": "You messed up. Restart the potion!"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s title [{"text": "❌","color": "red"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:recipe_meltdown

execute as @a run scoreboard players operation @s tmp = @s costume
execute as @a run scoreboard players operation @s tmp %= #100 const
execute as @a[scores={tmp=21}] if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only lobby:unlocked/axolotl_green
execute as @a[scores={tmp=45}] if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only lobby:unlocked/piglin_chan

tag @s remove self

function bc:recipe/reset