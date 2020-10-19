# 'Hit' detection of zombies
# @calledBy: gm:game_logic
# @calledBy: gm:summon_zombie
# @author: dragonmaster95
# @notes: Runs at the zombie and as the caught player

#Information message that you got caught
execute if score @e[type=zombie,sort=nearest,limit=1] gm_id matches 0.. run tellraw @s [{"text":"You were zombified by ","color":"gray"},{"selector":"@p[gamemode=spectator]"},{"text":"'s zombie!"}]
execute unless score @e[type=zombie,sort=nearest,limit=1] gm_id matches 0.. run tellraw @s {"text":"You were zombified!","color":"gray"}

#Advancements
scoreboard players operation @s tmp = @s costume
scoreboard players operation @s tmp %= #100 const
advancement grant @s only gm:a_new_zombie
advancement grant @s[scores={tmp=45}] only lobby:unlocked/zombified_piglin
advancement grant @s[scores={tmp=68..69}] only lobby:unlocked/zombie_horse
advancement grant @s[scores={tmp=70}] only lobby:unlocked/zombie_villager

scoreboard players operation #gm_maxTime tmp = #gm_maxTime const
scoreboard players operation #gm_maxTime tmp -= @s timer
execute if score #gm_maxTime tmp matches ..100 run advancement grant @s only gm:slowest_of_them_all

#Create zombie
tag @s add gm_caught
function gm:summon_zombie
team join gm_dead
scoreboard players set @s gm_alive 0
gamemode spectator @s

#Put costume (or player) head on the zombie
execute if entity @s[tag=has_costume] run data modify entity @e[type=zombie,tag=gm_new,limit=1,distance=..1,sort=nearest] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute unless entity @s[tag=has_costume] run loot replace entity @e[type=zombie,tag=gm_new,limit=1,distance=..1,sort=nearest] armor.head loot gm:player_head

#Give zombie and player same id
scoreboard players add #gm_gamestate gm_id 1
scoreboard players operation @s gm_id = #gm_gamestate gm_id
scoreboard players operation @e[type=zombie,tag=gm_new,limit=1,distance=..1,sort=nearest] gm_id = #gm_gamestate gm_id

