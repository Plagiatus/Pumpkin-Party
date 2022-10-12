tag @s[type=player] add has_costume

execute if score @s[tag=ul_spider] costume matches 1004 run function lobby:costume/spider
execute if score @s[tag=!ul_spider] costume matches 1004 run function lobby:costume/info/spider
execute if score @s[tag=ul_slime] costume matches 1009 run function lobby:costume/slime
execute if score @s[tag=!ul_slime] costume matches 1009 run function lobby:costume/info/slime
execute if score @s[tag=ul_allay] costume matches 1012 run function lobby:costume/allay
execute if score @s[tag=!ul_allay] costume matches 1012 run function lobby:costume/info/allay
execute if score @s costume matches 1011 run function lobby:costume/ghost
execute if score @s[tag=ul_hoglin] costume matches 1018 run function lobby:costume/hoglin
execute if score @s[tag=!ul_hoglin] costume matches 1018 run function lobby:costume/info/hoglin
execute if score @s[tag=ul_guardian] costume matches 1023 run function lobby:costume/guardian
execute if score @s[tag=!ul_guardian] costume matches 1023 run function lobby:costume/info/guardian

execute if score @s[tag=ul_cave_spider] costume matches 1104 run function lobby:costume/cave_spider
execute if score @s[tag=!ul_cave_spider] costume matches 1104 run function lobby:costume/info/cave_spider
execute if score @s[tag=ul_magma_cube] costume matches 1109 run function lobby:costume/magma_cube
execute if score @s[tag=!ul_magma_cube] costume matches 1109 run function lobby:costume/info/magma_cube
execute if score @s[tag=ul_vex] costume matches 1112 run function lobby:costume/vex
execute if score @s[tag=!ul_vex] costume matches 1112 run function lobby:costume/info/vex
execute if score @s[tag=ul_gold_ghost] costume matches 1111 run function lobby:costume/gold_ghost
execute if score @s[tag=!ul_gold_ghost] costume matches 1111 run function lobby:costume/info/gold_ghost
execute if score @s[tag=ul_zoglin] costume matches 1118 run function lobby:costume/zoglin
execute if score @s[tag=!ul_zoglin] costume matches 1118 run function lobby:costume/info/zoglin
execute if score @s[tag=ul_elder_guardian] costume matches 1123 run function lobby:costume/elder_guardian
execute if score @s[tag=!ul_elder_guardian] costume matches 1123 run function lobby:costume/info/elder_guardian

execute if score @s costume matches 1204 run function lobby:costume/giant_spider


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

