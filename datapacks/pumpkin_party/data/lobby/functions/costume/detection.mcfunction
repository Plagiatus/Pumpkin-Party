execute as @s[type=player] unless score @s costume matches 1.. unless block ~ ~ ~ dark_oak_door unless entity @e[type=armor_stand,scores={costume=1204},distance=..4] run title @s actionbar ["",{"text":"[INFO]","color":"gold"},{"text":" Walk into a costume to wear it.","color":"none"}]
execute as @s[type=player] if score @s costume matches 1.. unless block ~ ~ ~ dark_oak_door unless entity @e[type=armor_stand,scores={costume=1204},distance=..4] run title @s actionbar ["",{"text":"[INFO]","color":"gold"},{"text":" Some costumes change their variant when you right click them.","color":"none"}]

scoreboard players operation @s[type=player,tag=!in_costume] oldCostume = @s costume
execute positioned ~-0.75 ~ ~-0.75 run scoreboard players operation @s[type=player,tag=!in_costume] costume = @e[type=minecraft:armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] costume
execute as @s[type=player,tag=!in_costume] positioned ~-0.75 ~ ~-0.75 if entity @e[type=minecraft:armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] run tag @s remove got_costume

tag @s[tag=!got_costume] add play_costume_sound
execute if entity @s[scores={costume=0..999},tag=!got_costume] run function lobby:costume/equip_costume0
execute if entity @s[scores={costume=1000..1999},tag=!got_costume] run function lobby:costume/equip_costume1
execute if entity @s[scores={costume=2000..2999},tag=!got_costume] run function lobby:costume/equip_costume2
execute if entity @s[scores={costume=3000..3999},tag=!got_costume] run function lobby:costume/equip_costume3
execute if entity @s[scores={costume=4000..4999},tag=!got_costume] run function lobby:costume/equip_costume4
execute if entity @s[scores={costume=5000..5999},tag=!got_costume] run function lobby:costume/equip_costume5
execute if entity @s[scores={costume=6000..6999},tag=!got_costume] run function lobby:costume/equip_costume6
execute if entity @s[scores={costume=7000..7999},tag=!got_costume] run function lobby:costume/equip_costume7
execute if entity @s[scores={costume=8000..8999},tag=!got_costume] run function lobby:costume/equip_costume8
execute if entity @s[scores={costume=9000..9999},tag=!got_costume] run function lobby:costume/equip_costume9
execute if entity @s[scores={costume=10000..},tag=!got_costume] run function lobby:costume/equip_costume10

execute at @s[tag=play_costume_sound,tag=!costume_failed] run playsound minecraft:item.armor.equip_elytra master @s
scoreboard players operation @s[type=player,tag=costume_failed] costume = @s oldCostume

tag @s remove play_costume_sound

execute if entity @s[type=player] positioned ~-0.75 ~ ~-0.75 unless entity @e[type=minecraft:armor_stand,dy=0.5,dx=0.25,dz=0.25,limit=1,tag=Costume] run tag @s remove in_costume