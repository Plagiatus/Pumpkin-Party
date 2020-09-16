# setup generator player
tag @a[limit=1,sort=random] add sr_generate
tellraw @a[tag=sr_generate] [{"text": "[Spider Run]","color": "#FF6600"},{"text": " The game is using you to to load the chunks so the tunnel-generator can do its work. You'll be with the other players again soon.","color": "gray","italic": true}]
# effect give @a[tag=sr_generate] blindness 10000 0 true
# effect give @a[tag=sr_generate] levitation 10000 255 true
tp @a[tag=sr_generate] -420 85 -543

# setup difficulty
execute unless score sr_difficulty settings matches 0..2 run scoreboard players set sr_difficulty settings 0
scoreboard players operation #parts sr_distance = #normal sr_distance
execute if score sr_difficulty settings matches 1 run scoreboard players operation #parts sr_distance = #hard sr_distance
execute if score sr_difficulty settings matches 2 run scoreboard players operation #parts sr_distance = #nightmare sr_distance
scoreboard players operation #totalparts sr_distance = #parts sr_distance

# load starting area
setblock -452 59 -549 minecraft:structure_block[mode=load]{mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Plagiatus",rotation:"NONE",posX:-14,mode:"LOAD",posY:3,sizeX:21,posZ:5,integrity:1.0f,showair:0b,name:"sr:start",sizeY:13,sizeZ:25,showboundingbox:1b}
setblock -452 59 -548 redstone_block
summon area_effect_cloud -448 63 -544 {Tags:["sr_next"],Duration:1000}
summon armor_stand -462 64 -525 {HandItems:[{id:"minecraft:brick",Count:1b}],Tags:["sr_spider"],Rotation:[-90f,0f],Pose:{RightArm:[0f,0f,0f]}}

# set scores
scoreboard players set #timer timer 5
scoreboard players set #sr_phase points 1