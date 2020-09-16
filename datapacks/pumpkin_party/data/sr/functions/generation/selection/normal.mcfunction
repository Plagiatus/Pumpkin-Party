scoreboard players set $max tmp 2
function pp:util/get_random

execute if score $random tmp matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-1,posZ:0,integrity:1.0f,name:"sr:normal/1"}
execute if score $random tmp matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/2"}