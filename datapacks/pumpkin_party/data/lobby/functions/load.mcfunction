scoreboard objectives add costume dummy
scoreboard objectives add oldCostume dummy
scoreboard objectives add candies dummy {"color":"#FF6600","text":"Candies"}
scoreboard players add @a candies 0
scoreboard objectives add buyCostume trigger
scoreboard objectives add adv_playTime dummy
scoreboard objectives add sound_delay dummy
scoreboard objectives add costume_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add drop_basket minecraft.dropped:minecraft.orange_dye
scoreboard objectives add drop_full_basket minecraft.dropped:minecraft.red_dye
scoreboard objectives add dropped_floppy minecraft.dropped:minecraft.music_disc_mellohi
scoreboard players set #100 const 100

scoreboard objectives add lbb_game trigger {"text":"Start Game","color": "#ff6600"}

scoreboard objectives add adv_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add adv_sprint minecraft.custom:minecraft.sprint_one_cm

#Makes the teleporter in the lobby change its costume periodically
schedule function lobby:select_costume_teleporter 5s
schedule function lobby:costume/info/highlight_locked_schedule 5t

# 
scoreboard players add #game_ongoing settings 0