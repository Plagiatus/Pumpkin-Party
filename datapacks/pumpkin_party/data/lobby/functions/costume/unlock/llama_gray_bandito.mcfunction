#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_gray_bandito] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gray Llama (El Bandito) Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_gray_bandito] ["",{"text":"Password: "},{"text":"\"ELBANDITO\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"ELBANDITO"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_gray_bandito] run function lobby:costume/already_unlocked
tag @s add ul_llama_gray_bandito
execute if entity @s[team=] run function lobby:costume/llama_gray_bandito
tag @s add valid_password

advancement grant @s only lobby:unlocked/llama_gray_bandito