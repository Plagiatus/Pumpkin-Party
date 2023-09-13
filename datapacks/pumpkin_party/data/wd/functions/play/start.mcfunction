gamemode adventure @a
spreadplayers -1000 1000 1 5 false @a
execute as @a at @s run tp @s ~ ~ ~ facing -1000 71 1016

item replace entity @a hotbar.0 with carrot_on_a_stick{Warden:0,CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"□ ↓ □","italic": false, "color": "green"}'}}
item replace entity @a hotbar.1 with carrot_on_a_stick{Warden:1,CustomModelData:2,Unbreakable:1b,display:{Name:'{"text":"○ ← ○","italic": false, "color": "blue"}'}}
item replace entity @a hotbar.2 with carrot_on_a_stick{Warden:2,CustomModelData:4,Unbreakable:1b,display:{Name:'{"text":"☆ → ☆","italic": false, "color": "yellow"}'}}
item replace entity @a hotbar.3 with carrot_on_a_stick{Warden:3,CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"△ ↑ △","italic": false, "color": "light_purple"}'}}

function wd:play/bridge_back/start_first_time

scoreboard players set @a left_game 0

tag @a remove wd_mistake
tag @a remove wd_spectator

kill @e[type=marker,tag=wd_marker]
kill @e[type=marker,tag=wd_warden]
scoreboard players set #id wd_id 0
execute as @a run function wd:setup/player_id

summon marker -1000 10 1030 {Tags:["wd_warden"]}