execute if score @s bc_count matches 1 store result score #steps tmp if entity @s[nbt={ArmorItems:[{tag:{items:[{id:"minecraft:pumpkin",tag:{num:1}}]}}]}]
execute if score @s bc_count matches 2 store result score #steps tmp if entity @s[nbt={ArmorItems:[{tag:{items:[{id:"minecraft:pumpkin",tag:{num:1}},{id:"minecraft:nether_wart",tag:{num:2}}]}}]}]
execute if score @s bc_count matches 3 store result score #success tmp if entity @s[nbt={ArmorItems:[{tag:{items:[{id:"minecraft:pumpkin",tag:{num:1}},{id:"minecraft:nether_wart",tag:{num:2}},{id:"minecraft:apple",tag:{num:3}}]}}]}]