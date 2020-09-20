# Make a random door a witch 
# @calledBy: tot:game_logic
# @author: dragonmaster95
# Notes: Only affects doors taht are still on cooldown

tag @e[type=armor_stand,name=tot_doorbell,scores={tmp=1..}] remove tot_witch
tag @e[type=armor_stand,name=tot_doorbell,scores={tmp=1..},limit=1,sort=random] add tot_witch