scoreboard players remove #party_timer timer 1
scoreboard players operation #tmp tmp = #party_timer timer

# laugh
execute if score #party_timer timer matches 279 as @a at @s run playsound minecraft:custom.evil_laugh voice @s
execute if score #party_timer timer matches 279 run summon lightning_bolt 384 69 500
execute if score #party_timer timer matches 279 run tp @a 397 69 500 90 -10

# light flickering
execute if score #party_timer timer matches 275 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 250 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 240 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 235 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 221 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 210 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 200 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 195 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 180 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 172 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 170 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 165 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 160 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 157 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 155 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 149 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern
execute if score #party_timer timer matches 142 run fill 380 70 488 401 90 515 minecraft:soul_lantern[hanging=true] replace minecraft:lantern
execute if score #party_timer timer matches 140 run fill 380 70 488 401 90 515 minecraft:lantern[hanging=true] replace minecraft:soul_lantern


# random thingy
execute if score #party_timer timer matches 100..140 run scoreboard players operation #tmp tmp %= 2 const
execute if score #party_timer timer matches 80..99 run scoreboard players operation #tmp tmp %= 4 const
execute if score #party_timer timer matches 60..79 run scoreboard players operation #tmp tmp %= 8 const

# display a random unselected minigame
execute if score #party_timer timer matches 60..140 if score #tmp tmp matches 0 run function pp:party/choose_next

execute if score #party_timer timer matches 59 at @e[tag=lbb_PaintingSelect] run summon lightning_bolt

execute if score #party_timer timer matches 0 run scoreboard players remove #games_to_play settings 1
execute if score #games_to_play settings matches 0 run scoreboard players set #games_to_play settings -1

execute if score #party_timer timer matches 0 if score #selected tmp matches 1 run scoreboard players set #bc settings 0
execute if score #party_timer timer matches 0 if score #selected tmp matches 2 run scoreboard players set #gm settings 0
execute if score #party_timer timer matches 0 if score #selected tmp matches 3 run scoreboard players set #pc settings 0
execute if score #party_timer timer matches 0 if score #selected tmp matches 4 run scoreboard players set #sg settings 0
execute if score #party_timer timer matches 0 if score #selected tmp matches 5 run scoreboard players set #sr settings 0
execute if score #party_timer timer matches 0 if score #selected tmp matches 6 run scoreboard players set #tot settings 0

execute if score #party_timer timer matches 0 if score #selected tmp matches 1 run function bc:start
execute if score #party_timer timer matches 0 if score #selected tmp matches 2 run function gm:start
execute if score #party_timer timer matches 0 if score #selected tmp matches 3 run function pc:start
execute if score #party_timer timer matches 0 if score #selected tmp matches 4 run function sg:start
execute if score #party_timer timer matches 0 if score #selected tmp matches 5 run function sr:start
execute if score #party_timer timer matches 0 if score #selected tmp matches 6 run function tot:start