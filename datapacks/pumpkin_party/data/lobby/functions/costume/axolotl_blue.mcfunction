tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5421,Unbreakable:1,display:{Name:'{"text":"Axolotl (Blue) Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Axolotl (Blue) Costume","italic":false}',color:11776249},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Axolotl (Blue) Costume","italic":false}',color:11514623},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Axolotl (Blue) Costume","italic":false}',color:7100386},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/axolotl_blue
tag @s add ul_axolotl_blue
scoreboard players set @s[type=minecraft:armor_stand] const 500

scoreboard players set @s costume 5421
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Axolotl (Blue)"'}