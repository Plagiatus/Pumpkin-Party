#tmp = costume "category" like villagers etc.
scoreboard players operation @s[tag=!costume_sneak] tmp = @s costume
scoreboard players operation @s[tag=!costume_sneak] tmp %= #100 const

#Creeper
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=1}] run scoreboard players set @s sound_delay 60 

#Blaze
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=2}] run function lobby:costume/sneak/blaze

#Wither
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=3}] run function lobby:costume/sneak/wither

#Squid
execute if entity @s[tag=!costume_sneak,scores={tmp=4}] run particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.05 10 force @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=4}] run playsound minecraft:entity.squid.hurt player @a ~ ~ ~
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=4}] sound_delay 10

#Phantom
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=5}] run playsound minecraft:entity.phantom.ambient player @a

#Strider, Ghast, Enderman, Evocation Fangs
execute if entity @s[tag=!costume_sneak,scores={tmp=7..10}] run scoreboard players add @s costume 1000

#Ghosts
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=21}] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 1 0

#Spiders
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=22}] run playsound minecraft:entity.spider.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=22}] sound_delay 15

#Pumpkins
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=42}] run playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 1 0

#Zombies
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=43}] run playsound minecraft:entity.zombie.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=143}] run playsound minecraft:entity.husk.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=243}] run playsound minecraft:entity.drowned.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=343}] run playsound minecraft:entity.zombie_villager.ambient player @a

#Skeletons
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=44}] run playsound minecraft:entity.skeleton.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=144}] run playsound minecraft:entity.stray.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=244}] run playsound minecraft:entity.wither_skeleton.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=44}] sound_delay 15

#Piglins
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=45}] run playsound minecraft:entity.zombified_piglin.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=145}] run playsound minecraft:entity.piglin.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=245}] run playsound minecraft:entity.piglin_brute.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=345}] run playsound minecraft:entity.piglin.admiring_item player @a ~ ~ ~ 1 2
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=45}] sound_delay 25

#Illagers
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=67}] run playsound minecraft:entity.witch.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=67}] run particle witch ~ ~1 ~ 0.2 0.5 0.2 0.1 30
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=167}] run playsound minecraft:entity.vindicator.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=267}] run playsound minecraft:entity.pillager.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=367}] run playsound minecraft:entity.evoker.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=467}] run playsound minecraft:entity.illusioner.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=67}] sound_delay 15

#Horses
execute if score @s[tag=!costume_sneak,scores={sound_delay=0,tmp=68}] costume matches ..369 run playsound minecraft:entity.horse.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=468}] run playsound minecraft:entity.donkey.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=568}] run playsound minecraft:entity.mule.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=668}] run playsound minecraft:entity.zombie_horse.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=68}] sound_delay 15
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=69}] run playsound minecraft:entity.squid.hurt player @a ~ ~ ~ 1 2
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=69}] sound_delay 10

#Llamas
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=66}] run function lobby:costume/sneak/llama

#Sans
execute if entity @s[tag=!costume_sneak,scores={costume=344}] run scoreboard players add @s costume 1000

#Wolf/Foxes
execute if score @s[tag=!costume_sneak,scores={tmp=41}] tmp matches 41 run scoreboard players add @s costume 1000

#Villagers
execute unless score @s[tag=!costume_sneak,scores={sound_delay=0,tmp=70}] costume matches 170 run playsound minecraft:entity.villager.ambient player @a ~ ~ ~
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=170}] run playsound minecraft:entity.wandering_trader.ambient player @a ~ ~ ~
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=70}] sound_delay 15

#Special costumes with changing models
execute if score @s[tag=!costume_sneak,scores={costume=1000..}] costume matches 1000.. run function lobby:costume/equip_costume7

scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0}] sound_delay 30

tag @s add costume_sneak
execute unless predicate lobby:is_sneaking if score @s costume matches 1000..1999 run function lobby:costume/sneak_interaction_end
execute unless predicate lobby:is_sneaking run scoreboard players set @s costume_sneak 0
execute unless predicate lobby:is_sneaking run tag @s remove costume_sneak