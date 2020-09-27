summon creeper ~ ~ ~ {Fuse:0,ignited:1b}

tag @s add self
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s times 5 40 5
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s subtitle [{"text": "You messed up. Restart the potion!"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s title [{"text": "❌","color": "red"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:recipe_meltdown
tag @s remove self

function bc:recipe/reset