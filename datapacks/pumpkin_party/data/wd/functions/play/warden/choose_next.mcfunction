summon marker ~ ~ ~ {Tags:["rng_provider"]}
execute store result score #next wd_timer run data get entity @e[tag=rng_provider,limit=1] UUID[0]
scoreboard players operation #next wd_timer %= 4 const
kill @e[tag=rng_provider]

execute if score #next wd_timer matches 0 run setblock ~ ~1 ~ mud
execute if score #next wd_timer matches 1 run setblock ~ ~1 ~ packed_mud
execute if score #next wd_timer matches 2 run setblock ~ ~1 ~ mangrove_planks
execute if score #next wd_timer matches 3 run setblock ~ ~1 ~ mangrove_log