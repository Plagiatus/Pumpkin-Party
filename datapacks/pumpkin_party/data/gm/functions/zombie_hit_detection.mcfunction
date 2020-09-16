# 'Hit' detection of zombies
# @calledBy: gm:game_logic
# @calledBy: gm:summon_zombie
# @author: dragonmaster95
# @notes: Runs at the zombie and as the caught player

#Information message that you got caught
execute if score @e[type=zombie,sort=nearest,limit=1] ze_id matches 0.. run tellraw @s [{"text":"You were zombiefied by","color":"gray"},{"selector":"@p[gamemode=spectator]"},{"text":"'s zombie!"}]
execute unless score @e[type=zombie,sort=nearest,limit=1] ze_id matches 0.. run tellraw @s {"text":"You were zombiefied!","color":"gray"}

#Advancements
advancement grant @s only pumpkinparty:gma_new_zombie
execute if score #ze_timer timer matches 1100.. run advancement grant @s only pumpkinparty:gmslowest_of_them_all

#Create zombie
tag @s add ze_caught
function gm:summon_zombie
gamemode spectator @s

#Put costume (or player) head on the zombie
execute if entity @s[tag=has_costume] run data modify entity @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute unless entity @s[tag=has_costume] run loot replace entity @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] armor.head loot gm:player_head

#Give zombie and player same id
scoreboard players add #ze_gamestate ze_id 1
scoreboard players operation @s ze_id = #ze_gamestate ze_id
scoreboard players operation @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] ze_id = #ze_gamestate ze_id

