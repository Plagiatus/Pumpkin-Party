#First Time 
tellraw @s[advancements={lobby:unlocked/bat=true},tag=!tmp_all_costumes,tag=!ul_bat] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Bat Costume\""}]
tellraw @s[advancements={lobby:unlocked/bat=true},tag=!tmp_all_costumes,tag=!ul_bat] ["",{"text":"Password: "},{"text":"\"NANANANANANANANABATMAN\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"NANANANANANANANABATMAN"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_bat] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/bat=true}] add ul_bat
execute if entity @s[team=] run function lobby:costume/bat
tag @s add valid_password

advancement grant @s only lobby:unlocked/bat