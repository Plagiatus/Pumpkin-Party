tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5321,Unbreakable:1,display:{Name:'{"text":"Axolotl (Wild) Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Axolotl (Wild) Costume","italic":false}',color:8085576},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Axolotl (Wild) Costume","italic":false}',color:10648150},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Axolotl (Wild) Costume","italic":false}',color:3943713},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/axolotl_wild
tag @s add ul_axolotl_wild
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 5321
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Axolotl (Wild)"'}