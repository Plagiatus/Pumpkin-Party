#First Time 
tellraw @s[advancements={lobby:unlocked/axolotl_blue=true},tag=!tmp_all_costumes,tag=!ul_axolotl_blue] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Axolotl (Blue)  Costume\""}]
tellraw @s[advancements={lobby:unlocked/axolotl_blue=true},tag=!tmp_all_costumes,tag=!ul_axolotl_blue] ["",{"text":"Password: "},{"text":"\"SHINYHUNTING\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SHINYHUNTING"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_axolotl_blue] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/axolotl_blue=true}] add ul_axolotl_blue
execute if entity @s[team=] run function lobby:costume/axolotl_blue
tag @s add valid_password

advancement grant @s only lobby:unlocked/axolotl_blue