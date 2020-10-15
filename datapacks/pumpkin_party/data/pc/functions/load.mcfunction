team add pc_play
team modify pc_play color gold


#Amount of templates
scoreboard players set #pc_templates const 32

#Amount you need to get #maxPoints points
scoreboard players set #pc_max const 10


scoreboard objectives add pc_points dummy {"text":"Pumpkins Carved","color":"#ff6600"}
scoreboard objectives add pc_highscore dummy
scoreboard objectives add pc_carved_block minecraft.used:minecraft.diamond_pickaxe