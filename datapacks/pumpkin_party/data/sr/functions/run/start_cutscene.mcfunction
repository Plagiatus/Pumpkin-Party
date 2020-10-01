team join sr_play @a
gamemode adventure @a
tp @a[team=sr_play] -462 64 -539 -60 3
effect clear @a[tag=sr_generate]
tag @a remove sr_generate
tag @a remove sr_caught
tag @a remove sr_end
tag @a remove sr_in_tunnel
scoreboard players set #sr_phase points 2
scoreboard players set #sr_cutscene sr_time 0
scoreboard players set @a sr_time 0
scoreboard players set @a sr_tunnel 0

setblock -452 59 -548 air

advancement grant @a only sr:minigame_play