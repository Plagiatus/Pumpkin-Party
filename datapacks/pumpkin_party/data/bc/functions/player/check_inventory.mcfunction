tag @s[nbt={Inventory:[{id:"minecraft:apple"},{id:"minecraft:lime_dye"},{id:"minecraft:pink_dye"},{id:"minecraft:gunpowder"},{id:"minecraft:nether_wart"},{id:"minecraft:gold_nugget"},{id:"minecraft:spider_eye"},{id:"minecraft:slime_ball"},{id:"minecraft:pumpkin"},{id:"minecraft:pumpkin_seeds"}]}] add has_all

advancement grant @s[tag=has_all] only bc:armsful_of_froglegsgun
advancement revoke @s[tag=!has_all] only bc:check_inventory
tag @s remove has_all