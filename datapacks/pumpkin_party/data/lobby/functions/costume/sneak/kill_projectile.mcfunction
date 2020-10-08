execute if entity @s[tag=wither_skull] run playsound entity.generic.explode player @a
execute if entity @s[tag=wither_skull] run particle explosion

execute if entity @s[tag=small_fireball] run kill @e[type=snowball,distance=..1,sort=nearest,limit=1]

execute if entity @s[tag=fireball] run kill @e[type=fireball,distance=..1,sort=nearest,limit=1]
execute if entity @s[tag=fireball] run playsound entity.generic.explode player @a
execute if entity @s[tag=fireball] run particle explosion

execute if entity @s[tag=llama_spit] run kill @e[type=llama_spit,distance=..1,sort=nearest,limit=1]

kill @s