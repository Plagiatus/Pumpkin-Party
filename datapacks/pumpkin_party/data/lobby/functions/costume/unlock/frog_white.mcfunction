#First Time 
tellraw @s[advancements={lobby:unlocked/frog_white=true},tag=!tmp_all_costumes,tag=!ul_frog_white] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Frog Costume (Warm)\""}]
tellraw @s[advancements={lobby:unlocked/frog_white=true},tag=!tmp_all_costumes,tag=!ul_frog_white] ["",{"text":"Password: "},{"text":"\"WITHOURPOWERSCOMBINED\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WITHOURPOWERSCOMBINED"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_frog_white] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/frog_white=true}] add ul_frog_white
execute if entity @s[team=] run function lobby:costume/frog_white
tag @s add valid_password

advancement grant @s only lobby:unlocked/frog_white