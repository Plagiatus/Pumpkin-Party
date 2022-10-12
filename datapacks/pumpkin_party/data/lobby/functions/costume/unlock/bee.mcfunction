#First Time 
tellraw @s[advancements={lobby:unlocked/bee=true},tag=!tmp_all_costumes,tag=!ul_bee] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Bee Costume\""}]
tellraw @s[advancements={lobby:unlocked/bee=true},tag=!tmp_all_costumes,tag=!ul_bee] ["",{"text":"Password: "},{"text":"\"BIGBUMBLEBEE\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BIGBUMBLEBEE"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_bee] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/bee=true}] add ul_bee
execute if entity @s[team=] run function lobby:costume/bee
tag @s add valid_password

advancement grant @s only lobby:unlocked/bee