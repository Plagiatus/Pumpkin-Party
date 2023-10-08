tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5021,Unbreakable:1,display:{Name:'{"text":"Axolotl (Lucy) Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Axolotl (Lucy) Costume","italic":false}',color:14910652},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Axolotl (Lucy) Costume","italic":false}',color:16499171},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Axolotl (Lucy) Costume","italic":false}',color:13710964},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/axolotl_lucy
tag @s add ul_axolotl_lucy
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 5021
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Axolotl (Lucy)"'}