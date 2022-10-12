execute as @s[scores={wd_mistake=0}] if score @s wd_timer < #wd_total wd_timer run function wd:play/player/click
scoreboard players set @s wd_click 0