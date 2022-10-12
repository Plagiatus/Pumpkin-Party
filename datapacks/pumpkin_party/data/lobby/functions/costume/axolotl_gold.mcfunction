tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5221,Unbreakable:1,display:{Name:'{"text":"Axolotl (Gold) Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Axolotl (Gold) Costume","italic":false}',color:15380033},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Axolotl (Gold) Costume","italic":false}',color:16765211},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Axolotl (Gold) Costume","italic":false}',color:9591822},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/axolotl_gold
tag @s add ul_axolotl_gold
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 5221
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Axolotl (Gold)"'}