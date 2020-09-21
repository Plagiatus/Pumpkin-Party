scoreboard players set $max tmp 100
function pp:util/get_random

execute if score $random tmp matches 0..7 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-5,posZ:-2,integrity:1.0f,name:"sr:normal/bridge"}
execute if score $random tmp matches 8..15 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/broken_door"}
execute if score $random tmp matches 16..23 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/hangman"}
execute if score $random tmp matches 24..31 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/ice"}
execute if score $random tmp matches 32..39 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-2,integrity:1.0f,name:"sr:normal/leaves"}
execute if score $random tmp matches 40..47 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-3,posZ:-5,integrity:1.0f,name:"sr:normal/magma"}
execute if score $random tmp matches 48..55 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/mineshaft"}
execute if score $random tmp matches 56..63 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/net"}
execute if score $random tmp matches 64..71 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/oak_tree"}
execute if score $random tmp matches 72..79 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/prismarine"}
execute if score $random tmp matches 80..87 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-1,posZ:0,integrity:1.0f,name:"sr:normal/stonepillar"}
execute if score $random tmp matches 88..95 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/wall"}
execute if score $random tmp matches 96 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/gravel"}
execute if score $random tmp matches 97 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:hard/lava"}
execute if score $random tmp matches 98 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/spiders"}
execute if score $random tmp matches 99 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/vines"}