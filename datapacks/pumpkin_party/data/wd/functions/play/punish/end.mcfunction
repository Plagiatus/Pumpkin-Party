execute if score #wd_phase wd_phases < #total wd_phases run function wd:play/bridge_back/start
execute if score #wd_phase wd_phases >= #total wd_phases run function wd:end_trigger

# execute as @e[type=armor_stand,tag=wd_warden,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 ~
item replace entity @e[type=armor_stand,tag=wd_warden] armor.head with echo_shard{CustomModelData:1}