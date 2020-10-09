scoreboard players set $max tmp 100
function pp:util/get_random

execute if score $random tmp matches 0..6 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-5,posZ:-2,integrity:1.0f,name:"sr:normal/bridge"}
execute if score $random tmp matches 7..13 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/broken_door"}
execute if score $random tmp matches 14..20 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/hangman"}
execute if score $random tmp matches 21..27 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/ice"}
execute if score $random tmp matches 28..34 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-2,integrity:1.0f,name:"sr:normal/leaves"}
execute if score $random tmp matches 35..41 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-3,posZ:-5,integrity:1.0f,name:"sr:normal/magma"}
execute if score $random tmp matches 42..48 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/mineshaft"}
execute if score $random tmp matches 49..55 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/net"}
execute if score $random tmp matches 56..62 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/oak_tree"}
execute if score $random tmp matches 63..69 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/prismarine"}
execute if score $random tmp matches 70..76 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-1,posZ:0,integrity:1.0f,name:"sr:normal/stonepillar"}
execute if score $random tmp matches 77..83 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/wall"}

execute if score $random tmp matches 84..85 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/gravel"}
execute if score $random tmp matches 86..87 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:hard/lava"}
execute if score $random tmp matches 88..89 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/spiders"}
execute if score $random tmp matches 90..91 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/vines"}
execute if score $random tmp matches 93..93 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-5,posZ:-3,integrity:1.0f,name:"sr:hard/nether"}

execute if score $random tmp matches 94..96 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:nightmare/slime"}
execute if score $random tmp matches 96..99 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-4,posZ:0,integrity:1.0f,name:"sr:nightmare/end"}