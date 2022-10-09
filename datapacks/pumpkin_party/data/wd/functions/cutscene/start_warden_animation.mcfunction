execute store result score #tmp wd_timer run time query gametime
scoreboard players operation #tmp wd_timer %= 24000 const
scoreboard players operation #tmp wd_timer += warden_spawn_start const
scoreboard players operation #tmp wd_timer %= warden_spawn const

kill @e[type=item_frame,tag=wd_warden_if]

summon item_frame -1000 69 1016 {Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1,CustomPotionColor:8388880}},Facing:1b,Tags:["wd_warden_if"],Invisible:1b,Fixed:1b,Silent:1b}
playsound entity.warden.emerge hostile @a -1000 69 1016
execute store result entity @e[type=item_frame,tag=wd_warden_if,limit=1,sort=nearest] Item.tag.CustomPotionColor int 1 run scoreboard players get #tmp wd_timer