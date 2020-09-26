scoreboard players operation @s tmp = @s adv_walk
scoreboard players operation @s tmp += @s adv_sprint

advancement revoke @s only lobby:move/check

advancement grant @s[scores={tmp=50000..}] only lobby:move/horse_brown
advancement grant @s[scores={tmp=100000..}] only lobby:move/horse_white
advancement grant @s[scores={tmp=250000..}] only lobby:move/horse_gray
advancement grant @s[scores={tmp=500000..}] only lobby:move/horse_black