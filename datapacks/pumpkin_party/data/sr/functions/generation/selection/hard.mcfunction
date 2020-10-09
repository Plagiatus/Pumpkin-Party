scoreboard players set $max tmp 100
function pp:util/get_random

execute if score $random tmp matches 0..5 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-5,posZ:-2,integrity:1.0f,name:"sr:normal/bridge"}
execute if score $random tmp matches 6..11 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/broken_door"}
execute if score $random tmp matches 12..17 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/hangman"}
execute if score $random tmp matches 18..23 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/ice"}
execute if score $random tmp matches 24..29 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-2,integrity:1.0f,name:"sr:normal/leaves"}
execute if score $random tmp matches 30..35 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-3,posZ:-5,integrity:1.0f,name:"sr:normal/magma"}
execute if score $random tmp matches 36..41 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/mineshaft"}
execute if score $random tmp matches 42..47 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/net"}
execute if score $random tmp matches 48..53 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/oak_tree"}
execute if score $random tmp matches 54..59 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:normal/prismarine"}
execute if score $random tmp matches 60..65 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-1,posZ:0,integrity:1.0f,name:"sr:normal/stonepillar"}
execute if score $random tmp matches 66..71 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:normal/wall"}

execute if score $random tmp matches 72..76 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/gravel"}
execute if score $random tmp matches 77..81 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:-1,integrity:1.0f,name:"sr:hard/lava"}
execute if score $random tmp matches 82..85 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/spiders"}
execute if score $random tmp matches 86..90 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:hard/vines"}
execute if score $random tmp matches 92..95 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-5,posZ:-3,integrity:1.0f,name:"sr:hard/nether"}

execute if score $random tmp matches 96..97 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0,integrity:1.0f,name:"sr:nightmare/slime"}
execute if score $random tmp matches 98..99 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:-4,posZ:0,integrity:1.0f,name:"sr:nightmare/end"}