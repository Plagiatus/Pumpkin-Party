# Make a random door a witch 
# @calledBy: tot:game_logic
# @author: dragonmaster95
# Notes: Only affects doors taht are still on cooldown

tag @e[type=minecraft:armor_stand,name=tot_doorbell,scores={timer=0}] remove tot_witch
tag @e[type=minecraft:armor_stand,name=tot_doorbell,scores={timer=0},limit=1,sort=random] add tot_witch