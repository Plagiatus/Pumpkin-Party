#function lobby:costume/change_variant_forward

function lobby:costume/detection

playsound minecraft:item.armor.equip_turtle master @a
replaceitem entity @s weapon.mainhand nether_brick
tag @s remove has_costume