execute if score bc_difficulty settings matches 0 if score #i1 tmp matches 1 run scoreboard players set #first tmp 103
execute if score bc_difficulty settings matches 0 if score #i1 tmp matches 0 run scoreboard players set #first tmp 3
execute if score bc_difficulty settings matches 0 if score #i2 tmp matches 1 run scoreboard players set #second tmp 109
execute if score bc_difficulty settings matches 0 if score #i2 tmp matches 0 run scoreboard players set #second tmp 9
execute if score bc_difficulty settings matches 0 if score #i3 tmp matches 1 run scoreboard players set #third tmp 107
execute if score bc_difficulty settings matches 0 if score #i3 tmp matches 0 run scoreboard players set #third tmp 7

execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..0 run scoreboard players set #first tmp 3
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 1.. run scoreboard players set #first tmp 103
execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..1 run scoreboard players set #second tmp 9
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 2.. run scoreboard players set #second tmp 109
execute if score bc_difficulty settings matches 1 if score @s bc_count matches ..2 run scoreboard players set #third tmp 7
execute if score bc_difficulty settings matches 1 if score @s bc_count matches 3.. run scoreboard players set #third tmp 107