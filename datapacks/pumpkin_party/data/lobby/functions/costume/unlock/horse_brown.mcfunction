#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_brown] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Brown Horse Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_horse_brown] ["",{"text":"Password: "},{"text":"\"LOOKATMYHORSEMYHORSEISAMAZING\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"LOOKATMYHORSEMYHORSEISAMAZING"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_brown] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/horse_brown
tag @s add valid_password

tag @s add ul_horse_brown
advancement grant @s only lobby:unlocked/horse_brown