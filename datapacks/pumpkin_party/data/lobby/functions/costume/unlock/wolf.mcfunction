#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wolf] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Wolf Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_wolf] ["",{"text":"Password: "},{"text":"\"YOUREGONNASTARTAHOWL\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"YOUREGONNASTARTAHOWL"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_wolf] run function lobby:costume/already_unlocked
function lobby:costume/wolf
tag @s add valid_password

advancement revoke @s only lobby:unlocked/wolf