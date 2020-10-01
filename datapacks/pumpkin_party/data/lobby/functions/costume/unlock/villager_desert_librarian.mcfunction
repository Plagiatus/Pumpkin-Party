#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_desert_librarian] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Librarian Villager Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_desert_librarian] ["",{"text":"Password: "},{"text":"\"THEPENISMIGHTIERTHANTHESWORD\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THEPENISMIGHTIERTHANTHESWORD"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_desert_librarian] run function lobby:costume/already_unlocked
execute if entity @s[team=] run function lobby:costume/villager_desert_librarian
tag @s add valid_password

tag @s add ul_villager_desert_librarian
advancement grant @s only lobby:unlocked/villager_desert_librarian