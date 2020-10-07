scoreboard players set #sg_phase points 1
scoreboard players set $ticks timer 600

# tp players
tp @a -999 69 -1001 0 0

tellraw @a ["",{"text":"\nShooting Gallery","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nShoot the moving targets to earn points.\nSpare the cats and villagers!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Earn the most points.","color":"gold"}]
execute if score sg_difficulty settings matches 0 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Normal","color":"#84A887"}]
execute if score sg_difficulty settings matches 1 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Hard","color":"#AA8686"}]
execute if score sg_difficulty settings matches 2 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Nightmare","color":"#AD5454"}]
tellraw @a ""

scoreboard players add @a sg_highscore 0
scoreboard players add #sg_highscore sg_highscore 0

# reset sign
function sg:reset_sign