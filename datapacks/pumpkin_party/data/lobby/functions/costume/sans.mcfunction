tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3301,Unbreakable:1,display:{Name:'{"text":"Sans Mask","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:4752330},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:0},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:16777215},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

scoreboard players set @s[scores={sound_delay=5..}] sound_delay 2
tag @s add ul_sans

scoreboard players set @s costume 3301
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Sans"'}