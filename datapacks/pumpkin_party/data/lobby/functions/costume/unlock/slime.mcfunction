#First Time 
tellraw @s[advancements={lobby:unlocked/slime=true},tag=!tmp_all_costumes,tag=!ul_slime] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Slime Costume\""}]
tellraw @s[advancements={lobby:unlocked/slime=true},tag=!tmp_all_costumes,tag=!ul_slime] ["",{"text":"Password: "},{"text":"\"SQUISHYFRIEND\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SQUISHYFRIEND"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_slime] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/slime=true}] add ul_slime
execute if entity @s[team=] run function lobby:costume/slime
tag @s add valid_password

advancement grant @s only lobby:unlocked/slime