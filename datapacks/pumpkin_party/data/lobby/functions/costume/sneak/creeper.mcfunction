execute if score @s sound_delay matches 59 run playsound entity.creeper.primed player @a
execute if score @s sound_delay matches 59 run function lobby:costume/sneak/creeper_costume
execute if score @s sound_delay matches 57 run function lobby:costume/creeper

execute if score @s sound_delay matches 53 run function lobby:costume/sneak/creeper_costume
execute if score @s sound_delay matches 51 run function lobby:costume/creeper

execute if score @s sound_delay matches 47 run function lobby:costume/sneak/creeper_costume
execute if score @s sound_delay matches 45 run function lobby:costume/creeper

execute if score @s sound_delay matches 41 run function lobby:costume/sneak/creeper_costume
execute if score @s sound_delay matches 39 run function lobby:costume/creeper

execute if score @s sound_delay matches 36 run function lobby:costume/sneak/creeper_costume
execute if score @s sound_delay matches 34 run function lobby:costume/creeper

execute if score @s sound_delay matches 30 run function lobby:costume/sneak/creeper_costume

execute if score @s sound_delay matches 30 run effect give @s invisibility 1 0 true
execute if score @s sound_delay matches 29 run particle explosion_emitter
execute if score @s sound_delay matches 29 run playsound entity.generic.explode player @a
execute if score @s sound_delay matches 29 run item replace entity @s armor.head with air
execute if score @s sound_delay matches 29 run item replace entity @s armor.chest with air
execute if score @s sound_delay matches 29 run item replace entity @s armor.legs with air
execute if score @s sound_delay matches 29 run item replace entity @s armor.feet with air
execute if score @s sound_delay matches 29 run item replace entity @s armor.feet with air

execute if score @s sound_delay matches 10 run function lobby:costume/creeper