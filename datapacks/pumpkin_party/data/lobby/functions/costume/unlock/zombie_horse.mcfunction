#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_horse] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombie Horse Costume\""}]
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombie_horse] ["",{"text":"Password: "},{"text":"\"THEUNDEADRIDEAGAIN\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THEUNDEADRIDEAGAIN"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombie_horse] run function lobby:costume/already_unlocked
function lobby:costume/zombie_horse
tag @s add valid_password

advancement revoke @s only lobby:unlocked/zombie_horse