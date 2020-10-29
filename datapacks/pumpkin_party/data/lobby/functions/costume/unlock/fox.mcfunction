#First Time 
tellraw @s[advancements={lobby:unlocked/fox=true},tag=!tmp_all_costumes,tag=!ul_fox] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Fox Costume\""}]
tellraw @s[advancements={lobby:unlocked/fox=true},tag=!tmp_all_costumes,tag=!ul_fox] ["",{"text":"Password: "},{"text":"\"SLAYEROFCHICKENS\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SLAYEROFCHICKENS"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_fox] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/fox=true}] add ul_fox
execute if entity @s[team=] run function lobby:costume/fox
tag @s add valid_password

advancement grant @s only lobby:unlocked/fox