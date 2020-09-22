
scoreboard players operation #seconds tmp = @s sr_time
scoreboard players operation #mseconds tmp = @s sr_time
scoreboard players operation #seconds tmp /= 20 const
scoreboard players operation #minutes tmp = #seconds tmp
scoreboard players operation #minutes tmp /= 60 const
scoreboard players operation #seconds tmp %= 60 const
scoreboard players operation #mseconds tmp %= 20 const
scoreboard players operation #mseconds tmp *= 5 const


# tellraw rankings
execute if score #rank tmp matches 1 if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 1 if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a [{"color":"#ffd700","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 2 if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a [{"color":"#c0c0c0","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 3 if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a [{"color":"#cd7f32","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. if score #mseconds tmp matches ..9 if score #seconds tmp matches ..9 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. if score #mseconds tmp matches ..9 if score #seconds tmp matches 10.. run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".0", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. if score #mseconds tmp matches 10.. if score #seconds tmp matches ..9 run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":0", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]
execute if score #rank tmp matches 4.. if score #mseconds tmp matches 10.. if score #seconds tmp matches 10.. run tellraw @a [{"color":"white","text":""},{"score": {"name": "#rank","objective": "tmp"}},". ",{"selector": "@s"}, " who got eaten after ", {"score": {"name": "#minutes","objective": "tmp"}}, ":", {"score": {"name": "#seconds","objective": "tmp"}},".", {"score": {"name": "#mseconds","objective": "tmp"}}, " ",{"text":"(+","color":"gray"},{"score": {"name": "@s","objective": "sr_distance"},"color":"gray"},{"text":" candies)","color":"gray"}]