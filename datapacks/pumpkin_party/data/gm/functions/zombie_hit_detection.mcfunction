tag @s add ze_caught
function gm:summon_zombie
gamemode spectator @s
loot replace entity @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] armor.head loot gm:player_head

scoreboard players add @a[team=ze_play,gamemode=adventure] ze_points 1
tellraw @s {"text":"You were zombiefied!","color":"gray"}
advancement grant @s only pumpkinparty:gma_new_zombie
execute if score #ze_timer timer matches 1100.. run advancement grant @s only pumpkinparty:gmslowest_of_them_all

scoreboard players add #ze_gamestate ze_id 1
scoreboard players operation @s ze_id = #ze_gamestate ze_id
scoreboard players operation @e[type=zombie,tag=ze_new,limit=1,distance=..1,sort=nearest] ze_id = #ze_gamestate ze_id

