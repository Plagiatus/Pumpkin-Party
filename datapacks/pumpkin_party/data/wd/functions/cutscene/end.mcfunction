kill @e[type=item_frame,tag=wd_warden_if]
kill @e[type=armor_stand,tag=wd_camera]

summon armor_stand -1000 69 1016 {Tags:["wd_warden"],ArmorItems: [{},{},{},{Count:1,id:"minecraft:echo_shard",tag:{CustomModelData:1}}], Invisible:1b, Invulnerable:1b, NoBasePlate:1b, Rotation:[180f, 0f]}

fill -1003 68 1012 -997 68 1013 air replace sculk
setblock -1000 68 1012 light[level=15]
function wd:play/start

effect clear @a
effect give @a blindness 2 1 true