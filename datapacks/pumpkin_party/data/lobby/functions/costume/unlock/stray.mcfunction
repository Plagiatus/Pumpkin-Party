#First Time 
tellraw @s[advancements={lobby:unlocked/stray=true},tag=!tmp_all_costumes,tag=!ul_stray] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Stray Costume\""}]
tellraw @s[advancements={lobby:unlocked/stray=true},tag=!tmp_all_costumes,tag=!ul_stray] ["",{"text":"Password: "},{"text":"\"THECOOLERSKELETON\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THECOOLERSKELETON"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_stray] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/stray=true}] add ul_stray
execute if entity @s[team=] run function lobby:costume/stray
tag @s add valid_password

advancement grant @s only lobby:unlocked/stray