clear @s orange_dye
give @s orange_dye{display:{Name:'{"text":"Pumpkin Basket","italic":false}'}}
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:orange_dye"}}]
scoreboard players reset @s drop_basket