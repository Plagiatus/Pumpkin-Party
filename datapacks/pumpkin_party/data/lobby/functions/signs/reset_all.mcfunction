execute if score #resetscores tmp matches 1.. run scoreboard players set bc_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set gm_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set pc_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set sg_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set sr_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set tot_difficulty settings 10
execute if score #resetscores tmp matches 1.. run scoreboard players set wd_difficulty settings 10

execute if score #resetscores tmp matches 1.. run scoreboard players set bc_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set gm_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set pc_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set sg_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set sr_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set tot_in_party settings 0
execute if score #resetscores tmp matches 1.. run scoreboard players set wd_in_party settings 0

execute if score #resetscores tmp matches ..0 run scoreboard players remove bc_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove gm_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove pc_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove sg_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove sr_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove tot_difficulty settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove wd_difficulty settings 1

execute if score #resetscores tmp matches ..0 run scoreboard players remove bc_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove gm_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove pc_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove sg_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove sr_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove tot_in_party settings 1
execute if score #resetscores tmp matches ..0 run scoreboard players remove wd_in_party settings 1

execute positioned 391 71 490 run function lobby:signs/difficulty/bc
execute positioned 395 70 490 run function lobby:signs/difficulty/gm
execute positioned 386 70 510 run function lobby:signs/difficulty/pc
execute positioned 387 70 490 run function lobby:signs/difficulty/sg
execute positioned 392 70 510 run function lobby:signs/difficulty/sr
execute positioned 389 72 510 run function lobby:signs/difficulty/tot
execute positioned 399 71 490 run function lobby:signs/difficulty/wd

execute positioned 389 71 490 run function lobby:signs/partyselection/bc
execute positioned 393 70 490 run function lobby:signs/partyselection/gm
execute positioned 388 70 510 run function lobby:signs/partyselection/pc
execute positioned 385 70 490 run function lobby:signs/partyselection/sg
execute positioned 394 70 510 run function lobby:signs/partyselection/sr
execute positioned 391 72 510 run function lobby:signs/partyselection/tot
execute positioned 397 71 490 run function lobby:signs/partyselection/wd

execute positioned 390 71 490 run function lobby:signs/minigame/bc
execute positioned 394 70 490 run function lobby:signs/minigame/gm
execute positioned 387 70 510 run function lobby:signs/minigame/pc
execute positioned 386 70 490 run function lobby:signs/minigame/sg
execute positioned 393 70 510 run function lobby:signs/minigame/sr
execute positioned 390 72 510 run function lobby:signs/minigame/tot
execute positioned 398 71 490 run function lobby:signs/minigame/wd

scoreboard players set #resetscores tmp 0