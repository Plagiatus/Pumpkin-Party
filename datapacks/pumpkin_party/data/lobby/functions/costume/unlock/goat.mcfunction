#First Time 
tellraw @s[advancements={lobby:unlocked/goat=true},tag=!tmp_all_costumes,tag=!ul_goat] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Goat Costume\""}]
tellraw @s[advancements={lobby:unlocked/goat=true},tag=!tmp_all_costumes,tag=!ul_goat] ["",{"text":"Password: "},{"text":"\"WHATEVERFLOATSYOURGOAT\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHATEVERFLOATSYOURGOAT"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_goat] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/goat=true}] add ul_goat
execute if entity @s[team=] run function lobby:costume/goat
tag @s add valid_password

advancement grant @s only lobby:unlocked/goat