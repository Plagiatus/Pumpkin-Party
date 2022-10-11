# put all the tags and other stuff that players should get removed from themselves in case they still had it from minigames

effect clear

tag @s remove sr_generate
tag @s remove sr_in_tunnel

trigger lbb_game set 0

scoreboard players set @s left_game 0

tellraw @s ["\n",{"text":"Welcome back! Make sure you've got the resource pack enabled!\n\n","color":"#ff6600"},{"color":"blue","text":"--> click here for resourcepack <--\n","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/rdrw36g9t30n1qc/Pumpkinparty_v2.2.zip/file"},"underlined": true}]