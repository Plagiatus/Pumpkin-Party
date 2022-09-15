scoreboard players remove @a[scores={wd_mistake=1..}] wd_lives 1
execute as @a[scores={wd_lives=..0},team=wd_play] run function wd:play/punish/player_is_out