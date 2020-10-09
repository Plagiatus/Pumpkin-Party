clear @s orange_dye
clear @s red_dye
give @s red_dye{display:{Name:'{"text":"Pumpkin Basket","italic":false}'}}
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:red_dye"}}]
scoreboard players reset @s drop_full_basket