tp @a 391 69.0625 500 90 -10
scoreboard players set #party_timer timer 140

data merge storage pp:party {games:[]}

execute if score #bc settings matches 1 run data modify storage pp:party games append value 1
execute if score #gm settings matches 1 run data modify storage pp:party games append value 2
execute if score #pc settings matches 1 run data modify storage pp:party games append value 3
execute if score #sg settings matches 1 run data modify storage pp:party games append value 4
execute if score #sr settings matches 1 run data modify storage pp:party games append value 5
execute if score #tot settings matches 1 run data modify storage pp:party games append value 6
execute if score #wd settings matches 1 run data modify storage pp:party games append value 7

function pp:party/choose_random