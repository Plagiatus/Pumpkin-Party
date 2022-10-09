
# play animation
execute store result score #tmp wd_timer run time query gametime
scoreboard players operation #tmp wd_timer %= 24000 const
scoreboard players operation #tmp wd_timer += warden_attack_start const
scoreboard players operation #tmp wd_timer %= warden_atack const
execute store result entity @e[type=armor_stand,tag=wd_warden,limit=1,sort=nearest] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get #tmp wd_timer

playsound entity.warden.sonic_charge hostile @a -1000 69 1016 1 1 1

schedule function wd:play/punish/remove_lives 50t
schedule function wd:play/punish/end 85t