#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_brown] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Llama Brown Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_llama_brown] ["",{"text":"Password: "},{"text":"\"LIVINGTURRET\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"LIVINGTURRET"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_llama_brown] run function lobby:costume/already_unlocked
function lobby:costume/llama_brown
tag @s add valid_password

advancement revoke @s only lobby:unlocked/llama_brown