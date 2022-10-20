#First Time 
tellraw @s[advancements={lobby:unlocked/axolotl_wild=true},tag=!tmp_all_costumes,tag=!ul_axolotl_wild] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Axolotl (Wild)  Costume\""}]
tellraw @s[advancements={lobby:unlocked/axolotl_wild=true},tag=!tmp_all_costumes,tag=!ul_axolotl_wild] ["",{"text":"Password: "},{"text":"\"THEWILDONE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THEWILDONE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_axolotl_wild] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/axolotl_wild=true}] add ul_axolotl_wild
execute if entity @s[team=] run function lobby:costume/axolotl_wild
tag @s add valid_password

advancement grant @s only lobby:unlocked/axolotl_wild