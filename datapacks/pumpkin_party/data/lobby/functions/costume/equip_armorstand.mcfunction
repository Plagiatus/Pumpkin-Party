#function lobby:costume/change_variant_forward

function lobby:costume/detection

playsound minecraft:item.armor.equip_turtle master @a
item replace entity @s weapon.mainhand with nether_brick
tag @s remove has_costume