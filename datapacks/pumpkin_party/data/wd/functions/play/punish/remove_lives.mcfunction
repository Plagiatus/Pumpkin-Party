execute positioned -1000 71 1016 facing entity @a[scores={wd_mistake=1..}] eyes positioned ^ ^ ^1 run function wd:play/punish/particles

effect give @a[scores={wd_mistake=1..}] instant_damage 1 0 true
scoreboard players remove @a[scores={wd_mistake=1..}] wd_lives 1
tag @a[scores={wd_mistake=1..}] add wd_mistake
execute as @a[scores={wd_lives=..0},team=wd_play] run function wd:play/punish/player_is_out

playsound entity.warden.sonic_boom hostile @a -1000 69 1016 1 1 1