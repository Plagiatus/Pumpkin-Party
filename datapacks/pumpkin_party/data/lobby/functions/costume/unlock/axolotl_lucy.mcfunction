#First Time 
tellraw @s[advancements={lobby:unlocked/axolotl_lucy=true},tag=!tmp_all_costumes,tag=!ul_axolotl_lucy] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Axolotl (Lucy)  Costume\""}]
tellraw @s[advancements={lobby:unlocked/axolotl_lucy=true},tag=!tmp_all_costumes,tag=!ul_axolotl_lucy] ["",{"text":"Password: "},{"text":"\"THECUTESTPREDATOR\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THECUTESTPREDATOR"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_axolotl_lucy] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/axolotl_lucy=true}] add ul_axolotl_lucy
execute if entity @s[team=] run function lobby:costume/axolotl_lucy
tag @s add valid_password

advancement grant @s only lobby:unlocked/axolotl_lucy