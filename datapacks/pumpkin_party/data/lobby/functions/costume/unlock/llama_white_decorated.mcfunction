#First Time 
tellraw @s[advancements={lobby:unlocked/llama_white_decorated=true},tag=!tmp_all_costumes,tag=!ul_llama_white_decorated] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"White Llama Costume\""}]
tellraw @s[advancements={lobby:unlocked/llama_white_decorated=true},tag=!tmp_all_costumes,tag=!ul_llama_white_decorated] ["",{"text":"Password: "},{"text":"\"LONGNECKSHEEP\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"LONGNECKSHEEP"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_white_decorated] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/llama_white_decorated=true}] add ul_llama_white_decorated
execute if entity @s[team=] run function lobby:costume/llama_white_decorated
tag @s add valid_password

advancement grant @s only lobby:unlocked/llama_white_decorated