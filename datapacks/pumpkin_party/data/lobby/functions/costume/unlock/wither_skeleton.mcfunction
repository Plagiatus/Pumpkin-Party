#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither_skeleton] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wither Skeleton Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wither_skeleton] ["",{"text":"Password: "},{"text":"\"FORGOTTHESUNSCREEN\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"FORGOTTHESUNSCREEN"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wither_skeleton] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/wither_skeleton
tag @s add valid_password

tag @s add ul_wither_skeleton
advancement grant @s only lobby:unlocked/wither_skeleton