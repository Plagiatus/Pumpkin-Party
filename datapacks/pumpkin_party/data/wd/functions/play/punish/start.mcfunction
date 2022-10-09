scoreboard players set #wd_phase points 6

# reset music timer
scoreboard players set #wd_music wd_timer 0
scoreboard players set #wd_music_counter wd_timer 7
execute as @a at @s run playsound minecraft:custom.record_scratch master @s ~ ~ ~ 1 1

schedule function wd:play/punish/cutscene 2s

# paused position animation
item replace entity @e[type=armor_stand,tag=wd_warden] armor.head with potion{CustomModelData:2,CustomPotionColor:8388678}
# execute as @e[type=armor_stand,tag=wd_warden,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 ~