execute if predicate lobby:is_sneaking as @e[type=armor_stand,distance=..5,tag=Costume] if predicate lobby:costume/change_variant at @s run function lobby:costume/change_variant_backward
execute unless predicate lobby:is_sneaking as @e[type=armor_stand,distance=..5,tag=Costume] if predicate lobby:costume/change_variant at @s run function lobby:costume/change_variant_forward


execute as @e[type=armor_stand,distance=..5,tag=horse_costume] if predicate lobby:costume/change_variant at @s as @e[type=armor_stand,distance=0.1..3,tag=horse_costume] run function lobby:costume/equip_armorstand
execute as @e[type=armor_stand,distance=..5,tag=Costume] if predicate lobby:costume/change_variant at @s run function lobby:costume/equip_armorstand

clear @s nether_brick
advancement revoke @s only lobby:costume/clicked_costume 