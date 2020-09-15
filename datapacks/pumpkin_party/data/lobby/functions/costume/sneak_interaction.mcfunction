scoreboard players operation @s[tag=!costume_sneak] tmp = @s costume
scoreboard players operation @s[tag=!costume_sneak] tmp %= #100 const

#Squid
execute if score @s[tag=!costume_sneak] tmp matches 4 run particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.05 10 force @a
execute if score @s[tag=!costume_sneak] tmp matches 4 run playsound minecraft:entity.squid.hurt master @a ~ ~ ~

#Strider, Ghast, Enderman, Evocation Fangs
execute if score @s[tag=!costume_sneak] tmp matches 7..10 run scoreboard players add @s costume 1000

#Wolf/Foxes
execute if score @s[tag=!costume_sneak] tmp matches 41 run scoreboard players add @s costume 1000

#Villagers
execute if score @s[tag=!costume_sneak] tmp matches 70 run playsound minecraft:entity.villager.ambient master @a ~ ~ ~

execute if score @s[tag=!costume_sneak] costume matches 1000.. run function lobby:costume/equip_costume7

tag @s add costume_sneak
execute unless predicate lobby:is_sneaking if score @s costume matches 1000..1999 run function lobby:costume/sneak_interaction_end
execute unless predicate lobby:is_sneaking run scoreboard players set @s costume_sneak 0
execute unless predicate lobby:is_sneaking run tag @s remove costume_sneak