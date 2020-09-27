particle happy_villager ~ ~2 ~ 0.75 0.25 0.75 0 30
playsound entity.player.levelup voice @a[distance=..15] ~ ~ ~

tag @s add self

execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s times 5 40 5
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s subtitle [{"text": "Potion brewed successfully!"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s title [{"text": "✔","color": "green"}]
execute as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run scoreboard players add @s bc_points 1

execute if score @s bc_recipe matches 1 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p1
execute if score @s bc_recipe matches 2 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p2
execute if score @s bc_recipe matches 3 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p3
execute if score @s bc_recipe matches 4 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p4
execute if score @s bc_recipe matches 5 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p5
execute if score @s bc_recipe matches 6 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p6
execute if score @s bc_recipe matches 7 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p7
execute if score @s bc_recipe matches 8 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p8
execute if score @s bc_recipe matches 9 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p9
execute if score @s bc_recipe matches 10 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run advancement grant @s only bc:master_brewer p10

tag @s remove self

function bc:recipe/select_next