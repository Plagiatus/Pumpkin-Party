tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5521,Unbreakable:1,display:{Name:'{"text":"Axolotl (Green) Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Axolotl (Green) Costume","italic":false}',color:7458365},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Axolotl (Green) Costume","italic":false}',color:11665284},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Axolotl (Green) Costume","italic":false}',color:2527782},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/axolotl_green
tag @s add ul_axolotl_green

scoreboard players set @s costume 5521
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Axolotl (Green)"'}