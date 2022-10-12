#First Time 
tellraw @s[advancements={lobby:unlocked/frog_orange=true},tag=!tmp_all_costumes,tag=!ul_frog_orange] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Frog Costume (Temperate)\""}]
tellraw @s[advancements={lobby:unlocked/frog_orange=true},tag=!tmp_all_costumes,tag=!ul_frog_orange] ["",{"text":"Password: "},{"text":"\"ITSWEDNESDAY\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"ITSWEDNESDAY"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_frog_orange] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/frog_orange=true}] add ul_frog_orange
execute if entity @s[team=] run function lobby:costume/frog_orange
tag @s add valid_password

advancement grant @s only lobby:unlocked/frog_orange