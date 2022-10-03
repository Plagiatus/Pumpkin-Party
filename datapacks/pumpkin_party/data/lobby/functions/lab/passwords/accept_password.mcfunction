execute if score #labSoundTimer tmp matches 0 run setblock 391 63 489 brown_glazed_terracotta[facing=east]
execute if score #labSoundTimer tmp matches 0 run playsound minecraft:block.note_block.bit master @a 391 63 489 1 1
execute if score #labSoundTimer tmp matches 4 run playsound minecraft:block.note_block.bit master @a 391 63 489 1 1
execute if score #labSoundTimer tmp matches 8 run playsound minecraft:block.note_block.bit master @a 391 63 489 1 2

scoreboard players add #labSoundTimer tmp 1
execute if score #labSoundTimer tmp matches 9 run schedule function lobby:lab/reset_screen 2s
execute if score #labSoundTimer tmp matches 9 run tag @s remove entered_password
execute if score #labSoundTimer tmp matches 9 run tag @s remove valid_password


execute if score #labSoundTimer tmp matches 9 run scoreboard players set #labSoundTimer tmp 0