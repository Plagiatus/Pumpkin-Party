scoreboard players operation #seconds tmp = @s sr_highscore
scoreboard players operation #mseconds tmp = @s sr_highscore
scoreboard players operation #seconds tmp /= 20 const
scoreboard players operation #minutes tmp = #seconds tmp
scoreboard players operation #minutes tmp /= 60 const
scoreboard players operation #seconds tmp %= 60 const
scoreboard players operation #mseconds tmp %= 20 const
scoreboard players operation #mseconds tmp *= 5 const

execute if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a ["Personal best: ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}]
execute if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a ["Personal best: ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}]
execute if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a ["Personal best: ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}]
execute if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a ["Personal best: ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}]