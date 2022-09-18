tag @s[type=player] add has_costume



execute if score @s[tag=ul_witch] costume matches 6008 run function lobby:costume/witch
execute if score @s[tag=!ul_witch] costume matches 6008 run function lobby:costume/info/witch
execute if score @s[tag=ul_horse_brown] costume matches 6030 run function lobby:costume/horse_brown
execute if score @s[tag=ul_horse_brown] costume matches 6031 run function lobby:costume/horse_brown_back
execute if score @s[tag=!ul_horse_brown] costume matches 6030..6031 run function lobby:costume/info/horse_brown

execute if score @s[tag=ul_vindicator] costume matches 6108 run function lobby:costume/vindicator
execute if score @s[tag=!ul_vindicator] costume matches 6108 run function lobby:costume/info/vindicator
execute if score @s[tag=ul_horse_white] costume matches 6130 run function lobby:costume/horse_white
execute if score @s[tag=ul_horse_white] costume matches 6131 run function lobby:costume/horse_white_back
execute if score @s[tag=!ul_horse_white] costume matches 6130..6131 run function lobby:costume/info/horse_white

execute if score @s[tag=ul_pillager] costume matches 6208 run function lobby:costume/pillager
execute if score @s[tag=!ul_pillager] costume matches 6208 run function lobby:costume/info/pillager
execute if score @s[tag=ul_horse_gray] costume matches 6230 run function lobby:costume/horse_gray
execute if score @s[tag=ul_horse_gray] costume matches 6231 run function lobby:costume/horse_gray_back
execute if score @s[tag=!ul_horse_gray] costume matches 6230..6231 run function lobby:costume/info/horse_gray

execute if score @s[tag=ul_evoker] costume matches 6308 run function lobby:costume/evoker
execute if score @s[tag=!ul_evoker] costume matches 6308 run function lobby:costume/info/evoker
execute if score @s[tag=ul_horse_black] costume matches 6330 run function lobby:costume/horse_black
execute if score @s[tag=ul_horse_black] costume matches 6331 run function lobby:costume/horse_black_back
execute if score @s[tag=!ul_horse_black] costume matches 6330..6331 run function lobby:costume/info/horse_black

execute if score @s[tag=ul_evocation_fang] costume matches 6408 run function lobby:costume/evocation_fang
execute if score @s[tag=!ul_evocation_fang] costume matches 6408 run function lobby:costume/info/evocation_fang
execute if score @s[tag=ul_donkey] costume matches 6430 run function lobby:costume/donkey
execute if score @s[tag=ul_donkey] costume matches 6431 run function lobby:costume/donkey_back
execute if score @s[tag=!ul_donkey] costume matches 6430..6431 run function lobby:costume/info/donkey

execute if score @s[tag=ul_illusioner] costume matches 6508 run function lobby:costume/illusioner
execute if score @s[tag=!ul_illusioner] costume matches 6508 run function lobby:costume/info/illusioner
execute if score @s[tag=ul_mule] costume matches 6530 run function lobby:costume/mule
execute if score @s[tag=ul_mule] costume matches 6531 run function lobby:costume/mule_back
execute if score @s[tag=!ul_mule] costume matches 6530..6531 run function lobby:costume/info/mule

execute if score @s[tag=ul_ravager] costume matches 6608 run function lobby:costume/ravager
execute if score @s[tag=!ul_ravager] costume matches 6608 run function lobby:costume/info/ravager
execute if score @s[tag=ul_zombie_horse] costume matches 6630 run function lobby:costume/zombie_horse
execute if score @s[tag=ul_zombie_horse] costume matches 6631 run function lobby:costume/zombie_horse_back
execute if score @s[tag=!ul_zombie_horse] costume matches 6630..66319 run function lobby:costume/info/zombie_horse





execute if score @s costume matches 999 run function lobby:costume/giant_spider

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

