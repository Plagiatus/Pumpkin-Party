title @a[team=ze_play] title [{"text":"Game Over","color":"dark_blue"}]
#tp @e[tag=ze,type=zombie] ~ -50 ~
tellraw @a[team=ze_play] {"text":"Everyone was zombiefied!","color":"gray"}
execute as @a[team=ze_play] run scoreboard players operation @s points += @s ze_points
execute if entity @e[type=armor_stand,tag=GEN,tag=!singleGame] as @a[team=ze_play] run tellraw @s ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"ze_points"},"color":"dark_green"}]
schedule function gm:clean_arena 7s
scoreboard players set #ze_gamestate tmp 4
