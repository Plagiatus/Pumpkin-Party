execute if score sg_difficulty settings matches 0 run tellraw @s ["",{"text": "Shooting Gallery", "color": "#ff6600"}," (",{"text":"normal","color": "#84A887"},")",{"text":"\n - Average target speed: 2 m/s"},"\n"]
execute if score sg_difficulty settings matches 1 run tellraw @s ["",{"text": "Shooting Gallery", "color": "#ff6600"}," (",{"text":"hard","color": "#AA8686"},")",{"text":"\n - Average target speed: 3 m/s"},"\n"]
execute if score sg_difficulty settings matches 2 run tellraw @s ["",{"text": "Shooting Gallery", "color": "#ff6600"}," (",{"text":"nightmare","color": "#AD5454"},")",{"text":"\n - Average target speed: 4 m/s"},"\n"]