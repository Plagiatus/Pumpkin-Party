scoreboard players remove @s costume 10000
execute if score @s costume matches 7 run playsound entity.shulker.close player @a
execute if score @s costume matches 0..999 run function lobby:costume/equip_costume0
execute if score @s costume matches 1000..1999 run function lobby:costume/equip_costume1
execute if score @s costume matches 2000..2999 run function lobby:costume/equip_costume2
execute if score @s costume matches 3000..3999 run function lobby:costume/equip_costume3
execute if score @s costume matches 4000..4999 run function lobby:costume/equip_costume4
execute if score @s costume matches 5000..5999 run function lobby:costume/equip_costume5
execute if score @s costume matches 6000..6999 run function lobby:costume/equip_costume6
execute if score @s costume matches 7000..7999 run function lobby:costume/equip_costume7
execute if score @s costume matches 8000..8999 run function lobby:costume/equip_costume8
execute if score @s costume matches 9000..9999 run function lobby:costume/equip_costume9