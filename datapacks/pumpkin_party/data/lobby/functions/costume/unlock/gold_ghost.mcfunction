#First Time 
tellraw @s[advancements={lobby:unlocked/gold_ghost=true},tag=!tmp_all_costumes,tag=!ul_gold_ghost] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Gold Ghost Costume\""}]
tellraw @s[advancements={lobby:unlocked/gold_ghost=true},tag=!tmp_all_costumes,tag=!ul_gold_ghost] ["",{"text":"Password: "},{"text":"\"BUTTERGHOST\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BUTTERGHOST"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_gold_ghost] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/gold_ghost=true}] add ul_gold_ghost
execute if entity @s[team=] run function lobby:costume/gold_ghost
tag @s add valid_password

advancement grant @s only lobby:unlocked/gold_ghost