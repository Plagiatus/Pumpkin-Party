execute if score bc_difficulty settings matches 0 if score #i1 tmp matches 1 run scoreboard players set #first tmp 100
execute if score bc_difficulty settings matches 0 if score #i1 tmp matches 0 run scoreboard players set #first tmp 0
execute if score bc_difficulty settings matches 0 if score #i2 tmp matches 1 run scoreboard players set #second tmp 102
execute if score bc_difficulty settings matches 0 if score #i2 tmp matches 0 run scoreboard players set #second tmp 2
execute if score bc_difficulty settings matches 0 if score #i3 tmp matches 1 run scoreboard players set #third tmp 106
execute if score bc_difficulty settings matches 0 if score #i3 tmp matches 0 run scoreboard players set #third tmp 6

execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..0 run scoreboard players set #first tmp 0
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 1.. run scoreboard players set #first tmp 100
execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..1 run scoreboard players set #second tmp 2
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 2.. run scoreboard players set #second tmp 102
execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..2 run scoreboard players set #third tmp 6
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 3.. run scoreboard players set #third tmp 106