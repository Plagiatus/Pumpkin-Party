data merge block ~ ~-5 ~ {Text1:'""',Text2:'""',Text3:'""'}

execute if score @s bc_recipe matches -1 run function bc:recipe/display/recipes/example
execute if score @s bc_recipe matches 1 run function bc:recipe/display/recipes/cranium
execute if score @s bc_recipe matches 2 run function bc:recipe/display/recipes/metamordhasis
execute if score @s bc_recipe matches 3 run function bc:recipe/display/recipes/acid_cure
execute if score @s bc_recipe matches 4 run function bc:recipe/display/recipes/green_juice
execute if score @s bc_recipe matches 5 run function bc:recipe/display/recipes/thick_skin
execute if score @s bc_recipe matches 6 run function bc:recipe/display/recipes/vegan_blend
execute if score @s bc_recipe matches 7 run function bc:recipe/display/recipes/leftovers
execute if score @s bc_recipe matches 8 run function bc:recipe/display/recipes/purified_poison
execute if score @s bc_recipe matches 9 run function bc:recipe/display/recipes/gilded_breakfast
execute if score @s bc_recipe matches 10 run function bc:recipe/display/recipes/sticky_bomb

execute if score #first tmp matches 0 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf00 "}'}
execute if score #first tmp matches 0 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf00\\uEf11"}'}
execute if score #first tmp matches 100 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf00 ","color":"dark_gray"}'}
execute if score #first tmp matches 100 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf00\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 1 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf01 "}'}
execute if score #first tmp matches 1 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf01\\uEf11"}'}
execute if score #first tmp matches 101 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf01 ","color":"dark_gray"}'}
execute if score #first tmp matches 101 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf01\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 2 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf02 "}'}
execute if score #first tmp matches 2 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf02\\uEf11"}'}
execute if score #first tmp matches 102 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf02 ","color":"dark_gray"}'}
execute if score #first tmp matches 102 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf02\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 3 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf03 "}'}
execute if score #first tmp matches 3 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf03\\uEf11"}'}
execute if score #first tmp matches 103 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf03 ","color":"dark_gray"}'}
execute if score #first tmp matches 103 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf03\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 4 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf04 "}'}
execute if score #first tmp matches 4 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf04\\uEf11"}'}
execute if score #first tmp matches 104 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf04 ","color":"dark_gray"}'}
execute if score #first tmp matches 104 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf04\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 5 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf05 "}'}
execute if score #first tmp matches 5 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf05\\uEf11"}'}
execute if score #first tmp matches 105 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf05 ","color":"dark_gray"}'}
execute if score #first tmp matches 105 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf05\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 6 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf06 "}'}
execute if score #first tmp matches 6 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf06\\uEf11"}'}
execute if score #first tmp matches 106 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf06 ","color":"dark_gray"}'}
execute if score #first tmp matches 106 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf06\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 7 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf07 "}'}
execute if score #first tmp matches 7 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf07\\uEf11"}'}
execute if score #first tmp matches 107 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf07 ","color":"dark_gray"}'}
execute if score #first tmp matches 107 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf07\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 8 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf08 "}'}
execute if score #first tmp matches 8 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf08\\uEf11"}'}
execute if score #first tmp matches 108 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf08 ","color":"dark_gray"}'}
execute if score #first tmp matches 108 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf08\\uEf11","color":"dark_gray"}'}
execute if score #first tmp matches 9 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf09 "}'}
execute if score #first tmp matches 9 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf09\\uEf11"}'}
execute if score #first tmp matches 109 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF011\\uEf09 ","color":"dark_gray"}'}
execute if score #first tmp matches 109 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text1:'{"text":"\\uF012\\uEf09\\uEf11","color":"dark_gray"}'}

execute if score #second tmp matches 0 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf00 "}'}
execute if score #second tmp matches 0 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf00\\uEf11"}'}
execute if score #second tmp matches 100 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf00 ","color":"dark_gray"}'}
execute if score #second tmp matches 100 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf00\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 1 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf01 "}'}
execute if score #second tmp matches 1 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf01\\uEf11"}'}
execute if score #second tmp matches 101 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf01 ","color":"dark_gray"}'}
execute if score #second tmp matches 101 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf01\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 2 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf02 "}'}
execute if score #second tmp matches 2 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf02\\uEf11"}'}
execute if score #second tmp matches 102 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf02 ","color":"dark_gray"}'}
execute if score #second tmp matches 102 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf02\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 3 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf03 "}'}
execute if score #second tmp matches 3 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf03\\uEf11"}'}
execute if score #second tmp matches 103 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf03 ","color":"dark_gray"}'}
execute if score #second tmp matches 103 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf03\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 4 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf04 "}'}
execute if score #second tmp matches 4 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf04\\uEf11"}'}
execute if score #second tmp matches 104 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf04 ","color":"dark_gray"}'}
execute if score #second tmp matches 104 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf04\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 5 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf05 "}'}
execute if score #second tmp matches 5 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf05\\uEf11"}'}
execute if score #second tmp matches 105 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf05 ","color":"dark_gray"}'}
execute if score #second tmp matches 105 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf05\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 6 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf06 "}'}
execute if score #second tmp matches 6 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf06\\uEf11"}'}
execute if score #second tmp matches 106 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf06 ","color":"dark_gray"}'}
execute if score #second tmp matches 106 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf06\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 7 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf07 "}'}
execute if score #second tmp matches 7 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf07\\uEf11"}'}
execute if score #second tmp matches 107 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf07 ","color":"dark_gray"}'}
execute if score #second tmp matches 107 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf07\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 8 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf08 "}'}
execute if score #second tmp matches 8 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf08\\uEf11"}'}
execute if score #second tmp matches 108 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf08 ","color":"dark_gray"}'}
execute if score #second tmp matches 108 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf08\\uEf11","color":"dark_gray"}'}
execute if score #second tmp matches 9 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf09 "}'}
execute if score #second tmp matches 9 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf09\\uEf11"}'}
execute if score #second tmp matches 109 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf09 ","color":"dark_gray"}'}
execute if score #second tmp matches 109 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf09\\uEf11","color":"dark_gray"}'}

execute if score #third tmp matches 0 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text2:'{"text":"\\uEf00\\uF001"}'}
execute if score #third tmp matches 0 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf00\\uF002"}'}
execute if score #third tmp matches 100 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf00\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 100 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf00\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 1 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf01\\uF001"}'}
execute if score #third tmp matches 1 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf01\\uF002"}'}
execute if score #third tmp matches 101 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf01\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 101 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf01\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 2 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf02\\uF001"}'}
execute if score #third tmp matches 2 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf02\\uF002"}'}
execute if score #third tmp matches 102 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf02\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 102 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf02\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 3 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf03\\uF001"}'}
execute if score #third tmp matches 3 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf03\\uF002"}'}
execute if score #third tmp matches 103 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf03\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 103 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf03\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 4 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf04\\uF001"}'}
execute if score #third tmp matches 4 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf04\\uF002"}'}
execute if score #third tmp matches 104 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf04\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 104 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf04\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 5 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf05\\uF001"}'}
execute if score #third tmp matches 5 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf05\\uF002"}'}
execute if score #third tmp matches 105 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf05\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 105 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf05\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 6 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf06\\uF001"}'}
execute if score #third tmp matches 6 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf06\\uF002"}'}
execute if score #third tmp matches 106 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf06\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 106 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf06\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 7 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf07\\uF001"}'}
execute if score #third tmp matches 7 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf07\\uF002"}'}
execute if score #third tmp matches 107 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf07\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 107 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf07\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 8 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf08\\uF001"}'}
execute if score #third tmp matches 8 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf08\\uF002"}'}
execute if score #third tmp matches 108 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf08\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 108 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf08\\uF002","color":"dark_gray"}'}
execute if score #third tmp matches 9 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf09\\uF001"}'}
execute if score #third tmp matches 9 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf09\\uF002"}'}
execute if score #third tmp matches 109 if score bc_difficulty settings matches 0 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf09\\uF001","color":"dark_gray"}'}
execute if score #third tmp matches 109 if score bc_difficulty settings matches 1 run data merge block ~ ~-5 ~ {Text3:'{"text":"\\uEf09\\uF002","color":"dark_gray"}'}

function bc:recipe/display/display