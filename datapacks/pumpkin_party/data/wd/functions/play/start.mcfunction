tp @a -507 80 0 90 -12

item replace entity @a hotbar.1 with carrot_on_a_stick{Warden:1,CustomModelData:2,Unbreakable:1b,display:{Name:'{"text":"♦","italic": false, "color": "blue"}'}}
item replace entity @a hotbar.0 with carrot_on_a_stick{Warden:0,CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"♥","italic": false, "color": "red"}'}}
item replace entity @a hotbar.2 with carrot_on_a_stick{Warden:2,CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"♣","italic": false, "color": "green"}'}}
item replace entity @a hotbar.3 with carrot_on_a_stick{Warden:3,CustomModelData:4,Unbreakable:1b,display:{Name:'{"text":"♠","italic": false, "color": "yellow"}'}}

function wd:play/bridge_back/start

scoreboard players set @a left_game 0


kill @e[type=marker,tag=wd_marker]
kill @e[type=marker,tag=wd_warden]
scoreboard players set #id wd_id 0
execute as @a run function wd:setup/player_id

summon marker -495 80 0 {Tags:["wd_warden"]}