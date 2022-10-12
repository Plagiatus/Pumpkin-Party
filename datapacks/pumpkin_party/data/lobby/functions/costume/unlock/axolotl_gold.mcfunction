#First Time 
tellraw @s[advancements={lobby:unlocked/axolotl_gold=true},tag=!tmp_all_costumes,tag=!ul_axolotl_gold] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Axolotl (Gold)  Costume\""}]
tellraw @s[advancements={lobby:unlocked/axolotl_gold=true},tag=!tmp_all_costumes,tag=!ul_axolotl_gold] ["",{"text":"Password: "},{"text":"\"MUSICALENTHUSIAST\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"MUSICALENTHUSIAST"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_axolotl_gold] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/axolotl_gold=true}] add ul_axolotl_gold
execute if entity @s[team=] run function lobby:costume/axolotl_gold
tag @s add valid_password

advancement grant @s only lobby:unlocked/axolotl_gold