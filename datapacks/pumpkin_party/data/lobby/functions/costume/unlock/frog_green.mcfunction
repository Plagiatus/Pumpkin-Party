#First Time 
tellraw @s[advancements={lobby:unlocked/frog_green=true},tag=!tmp_all_costumes,tag=!ul_frog_green] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Frog Costume (Cold)\""}]
tellraw @s[advancements={lobby:unlocked/frog_green=true},tag=!tmp_all_costumes,tag=!ul_frog_green] ["",{"text":"Password: "},{"text":"\"SQUADHOPSINTOTOWN\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SQUADHOPSINTOTOWN"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_frog_green] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/frog_green=true}] add ul_frog_green
execute if entity @s[team=] run function lobby:costume/frog_green
tag @s add valid_password

advancement grant @s only lobby:unlocked/frog_green