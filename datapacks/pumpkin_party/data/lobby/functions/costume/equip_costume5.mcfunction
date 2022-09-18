tag @s[type=player] add has_costume

execute if score @s[tag=ul_axolotl_lucy] costume matches 5021 run function lobby:costume/axolotl_lucy
execute if score @s[tag=!ul_axolotl_lucy] costume matches 5021 run function lobby:costume/info/axolotl_lucy

execute if score @s[tag=ul_axolotl_cyan] costume matches 5121 run function lobby:costume/axolotl_cyan
execute if score @s[tag=!ul_axolotl_cyan] costume matches 5121 run function lobby:costume/info/axolotl_cyan

execute if score @s[tag=ul_axolotl_gold] costume matches 5221 run function lobby:costume/axolotl_gold
execute if score @s[tag=!ul_axolotl_gold] costume matches 5221 run function lobby:costume/info/axolotl_gold

execute if score @s[tag=ul_axolotl_wild] costume matches 5321 run function lobby:costume/axolotl_wild
execute if score @s[tag=!ul_axolotl_wild] costume matches 5321 run function lobby:costume/info/axolotl_wild

execute if score @s[tag=ul_axolotl_blue] costume matches 5421 run function lobby:costume/axolotl_blue
execute if score @s[tag=!ul_axolotl_blue] costume matches 5421 run function lobby:costume/info/axolotl_blue

execute if score @s[tag=ul_axolotl_green] costume matches 5521 run function lobby:costume/axolotl_green
execute if score @s[tag=!ul_axolotl_green] costume matches 5521 run function lobby:costume/info/axolotl_green

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

