tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:1006,Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:14193946},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:13804621},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:16573884},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
playsound entity.puffer_fish.blow_up player @a ~ ~ ~

tag @s remove small_puffer