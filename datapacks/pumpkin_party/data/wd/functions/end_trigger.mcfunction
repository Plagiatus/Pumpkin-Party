scoreboard players operation @a[gamemode=adventure,team=wd_play] wd_points = #wd_phase wd_phases
advancement grant @a[tag=!wd_mistake] only wd:perfect_game

data modify entity @e[type=armor_stand,tag=wd_warden,limit=1,sort=nearest] ArmorItems[3].tag.CustomModelData set value 6

scoreboard players set #wd_phase points 10
function wd:points/handle

schedule function wd:end 3s