# put all the tags and other stuff that players should get removed from themselves in case they still had it from minigames

effect clear

tag @s remove sr_generate
tag @s remove sr_in_tunnel

tag @a remove wd_spectator

trigger lbb_game set 0

scoreboard players set @s left_game 0


tellraw @s ["\n",{"text":"Welcome back! Make sure you've got the resource pack enabled!\n","color":"#ff6600"}]
function pp:resourcepack_tellraw