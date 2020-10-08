tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:1241,Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:15463144},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:12045757},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:3234655},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.fox.sleep player @a ~ ~ ~