# will generate a random number through a UUID (so don't spam this please)
# store your maximum in $max tmp, the random number will be in $random tmp and will be between 0 (including) and max (excluding)

summon area_effect_cloud ~ ~ ~ {Tags:["random_score"]}
execute store result score $random tmp run data get entity @e[tag=random_score,limit=1] UUID[0] 1
scoreboard players operation $random tmp %= $max tmp
kill @e[tag=random_score] 
