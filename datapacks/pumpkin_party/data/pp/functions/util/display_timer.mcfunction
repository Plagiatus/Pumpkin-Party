# set the timer score of $ticks to the amount of ticks left and call this function to display the remaining time in seconds on the players actionbars

scoreboard players operation $seconds timer = $ticks timer
scoreboard players operation $seconds timer /= 20 const
scoreboard players operation $minutes timer = $seconds timer
scoreboard players operation $seconds timer %= 60 const
scoreboard players operation $minutes timer /= 60 const

execute if score $seconds timer matches ..9 run title @a actionbar [{"text":"","color": "gold"},{"score": {"name": "$minutes", "objective": "timer"}},":0",{"score": {"name": "$seconds","objective": "timer"}}]
execute if score $seconds timer matches 10.. run title @a actionbar [{"text":"","color": "gold"},{"score": {"name": "$minutes", "objective": "timer"}},":",{"score": {"name": "$seconds","objective": "timer"}}] 
