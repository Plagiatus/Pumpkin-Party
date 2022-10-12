#First Time 
tellraw @s[advancements={lobby:unlocked/axolotl_green=true},tag=!tmp_all_costumes,tag=!ul_axolotl_green] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Axolotl (Green)  Costume\""}]
tellraw @s[advancements={lobby:unlocked/axolotl_green=true},tag=!tmp_all_costumes,tag=!ul_axolotl_green] ["",{"text":"Password: "},{"text":"\"MUSICALENTHUSIAST\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"MUSICALENTHUSIAST"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_axolotl_green] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/axolotl_green=true}] add ul_axolotl_green
execute if entity @s[team=] run function lobby:costume/axolotl_green
tag @s add valid_password

advancement grant @s only lobby:unlocked/axolotl_green