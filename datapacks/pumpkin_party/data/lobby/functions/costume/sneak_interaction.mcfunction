#tmp = costume "category" like villagers etc.
scoreboard players operation @s[tag=!costume_sneak] tmp = @s costume
scoreboard players operation @s[tag=!costume_sneak] tmp %= #100 const

#Creeper
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=2}] run scoreboard players set @s sound_delay 60 

#Blaze
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=16}] run function lobby:costume/sneak/blaze

#Wither
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=14}] run function lobby:costume/sneak/wither

#Phantom
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=2106}] run playsound minecraft:entity.phantom.ambient player @a

#Enderman, Shulker, Strider, Ghast, Wolf/Foxes, Bee, Sans, Evocation Fangs
execute if entity @s[tag=!costume_sneak,scores={costume=5}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=7}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=13}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=15}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={tmp=29}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=32}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=3301}] run scoreboard players add @s costume 10000
execute if entity @s[tag=!costume_sneak,scores={costume=6408}] run scoreboard players add @s costume 10000

tellraw @a {"score":{"name":"@s","objective":"sound_delay"}}
#Warden
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=19}] sound_delay 60

#Ghosts
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=11}] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 1 0

#Spiders
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=4}] run playsound minecraft:entity.spider.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=4}] sound_delay 15

#Squid
execute if entity @s[tag=!costume_sneak,scores={costume=1024}] run particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.05 10 force @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=1024}] run playsound minecraft:entity.squid.hurt player @a ~ ~ ~
execute if entity @s[tag=!costume_sneak,scores={costume=1124}] run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0 0 0.05 10 force @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=1124}] run playsound minecraft:entity.glow_squid.hurt player @a ~ ~ ~
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=24}] sound_delay 10

#Pumpkins
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=10}] run playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 10 0

#Zombies
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3003}] run playsound minecraft:entity.zombie.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3103}] run playsound minecraft:entity.husk.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3203}] run playsound minecraft:entity.drowned.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3303}] run playsound minecraft:entity.zombie_villager.ambient player @a

#Skeletons
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3001}] run playsound minecraft:entity.skeleton.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3101}] run playsound minecraft:entity.stray.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3201}] run playsound minecraft:entity.wither_skeleton.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=1,costume=..3201}] sound_delay 15

#Piglins
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3017}] run playsound minecraft:entity.zombified_piglin.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3117}] run playsound minecraft:entity.piglin.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3217}] run playsound minecraft:entity.piglin_brute.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=3317}] run playsound minecraft:entity.piglin.admiring_item player @a ~ ~ ~ 1 2
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=17}] sound_delay 25

#Illagers
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6008}] run playsound minecraft:entity.witch.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6008}] run particle witch ~ ~1 ~ 0.2 0.5 0.2 0.1 30
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6108}] run playsound minecraft:entity.vindicator.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6208}] run playsound minecraft:entity.pillager.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6308}] run playsound minecraft:entity.evoker.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6508}] run playsound minecraft:entity.illusioner.ambient player @a
execute unless score @s[tag=!costume_sneak,scores={sound_delay=0,tmp=8}] costume matches 6408 run scoreboard players set sound_delay 15

#Horses
execute if score @s[tag=!costume_sneak,scores={sound_delay=0,tmp=30}] costume matches ..6330 run playsound minecraft:entity.horse.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6430}] run playsound minecraft:entity.donkey.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6530}] run playsound minecraft:entity.mule.ambient player @a
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=6630}] run playsound minecraft:entity.zombie_horse.ambient player @a
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=30}] sound_delay 15
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=31}] run playsound minecraft:entity.squid.hurt player @a ~ ~ ~ 1 2
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=31}] sound_delay 10

#Llamas
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,tmp=28}] run function lobby:costume/sneak/llama


#Villagers
execute unless score @s[tag=!costume_sneak,scores={sound_delay=0,tmp=27}] costume matches 7127 run playsound minecraft:entity.villager.ambient player @a ~ ~ ~
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=7127}] run playsound minecraft:entity.wandering_trader.ambient player @a ~ ~ ~
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0,tmp=27}] sound_delay 15

#Special costumes with changing models
execute if entity @s[tag=!costume_sneak,scores={costume=10000..}] run function lobby:costume/equip_costume10

#Bee
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=32}] run scoreboard players add @s sound_delay 90
execute if entity @s[tag=!costume_sneak,scores={sound_delay=0,costume=13301}] run scoreboard players add @s sound_delay 40
#General
scoreboard players set @s[tag=!costume_sneak,scores={sound_delay=0}] sound_delay 30

tag @s add costume_sneak
execute unless predicate lobby:is_sneaking if score @s costume matches 10000.. run function lobby:costume/sneak_interaction_end
execute unless predicate lobby:is_sneaking run scoreboard players set @s costume_sneak 0
execute unless predicate lobby:is_sneaking run tag @s remove costume_sneak