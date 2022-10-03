#First Time 
tellraw @s[advancements={lobby:unlocked/ender_dragon=true},tag=!tmp_all_costumes,tag=!ul_ender_dragon] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Ender Dragon Costume\""}]
tellraw @s[advancements={lobby:unlocked/ender_dragon=true},tag=!tmp_all_costumes,tag=!ul_ender_dragon] ["",{"text":"Password: "},{"text":"\"THEENDISNEVERTHEENDISNEVERTHEEND\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"THEENDISNEVERTHEENDISNEVERTHEEND"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_ender_dragon] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/ender_dragon=true}] add ul_ender_dragon
execute if entity @s[team=] run function lobby:costume/ender_dragon
tag @s add valid_password

advancement grant @s only lobby:unlocked/ender_dragon