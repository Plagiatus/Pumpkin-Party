title @s[type=player,x=360,y=79,z=489,dx=19,dy=10,dz=22] actionbar ["",{"text":"[INFO]","color":"gold"},{"text":" Walk into a costume to wear it.","color":"none"}]
execute positioned ~-0.75 ~ ~-0.75 run scoreboard players operation @s[type=player,tag=!in_costume] costume = @e[type=armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] costume
execute as @s[type=player,tag=!in_costume] positioned ~-0.75 ~ ~-0.75 if entity @e[type=armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] run tag @s remove got_costume

execute at @s[tag=!got_costume] run playsound minecraft:item.armor.equip_elytra master @s
execute if entity @s[scores={costume=0..99},tag=!got_costume] run function lobby:costume/equip_costume1
execute if entity @s[scores={costume=100..199},tag=!got_costume] run function lobby:costume/equip_costume2
execute if entity @s[scores={costume=200..299},tag=!got_costume] run function lobby:costume/equip_costume3
execute if entity @s[scores={costume=300..399},tag=!got_costume] run function lobby:costume/equip_costume4
execute if entity @s[scores={costume=400..499},tag=!got_costume] run function lobby:costume/equip_costume5
execute if entity @s[scores={costume=500..999},tag=!got_costume] run function lobby:costume/equip_costume6
execute if entity @s[scores={costume=1000..},tag=!got_costume] run function lobby:costume/equip_costume7

execute if entity @s[type=player] positioned ~-0.75 ~ ~-0.75 unless entity @e[type=armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] run tag @s remove in_costume