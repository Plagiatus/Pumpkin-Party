tag @s remove costume_failed
item replace entity @s armor.head with minecraft:shulker_box{Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:7},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:7},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:7},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
#item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:15134893},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
#item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:12236409},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
#item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}',color:9922455},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/shulker
tag @s add ul_shulker
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 7
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Shulker"'}