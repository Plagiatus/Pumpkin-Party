scoreboard players set #wd_phase points 0

team empty wd_play
fill -1000 10 1030 -1000 200 1030 air

clear @a carrot_on_a_stick

fill -995 67 1022 -1005 67 1022 minecraft:tinted_glass replace air

kill @e[type=item_display,tag=wd.overhead]

tag @a remove wd_spectator
function pp:all_games/end