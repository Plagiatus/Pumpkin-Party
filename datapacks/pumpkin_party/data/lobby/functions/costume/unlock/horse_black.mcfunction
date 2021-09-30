#First Time 
tellraw @s[advancements={lobby:unlocked/horse_black=true},tag=!tmp_all_costumes,tag=!ul_horse_black] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Black Horse Costume\""}]
tellraw @s[advancements={lobby:unlocked/horse_black=true},tag=!tmp_all_costumes,tag=!ul_horse_black] ["",{"text":"Password: "},{"text":"\"BLACKKNIGHT\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BLACKKNIGHT"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_horse_black] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/horse_black=true}] add ul_horse_black
tag @s add valid_password

advancement grant @s only lobby:unlocked/horse_black