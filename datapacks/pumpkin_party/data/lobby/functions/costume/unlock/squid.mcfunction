#First Time 
tellraw @s[advancements={lobby:unlocked/squid=true},tag=!tmp_all_costumes,tag=!ul_squid] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Squid Costume\""}]
tellraw @s[advancements={lobby:unlocked/squid=true},tag=!tmp_all_costumes,tag=!ul_squid] ["",{"text":"Password: "},{"text":"\"BLUBB\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"BLUBB"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_squid] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/squid=true}] add ul_squid
execute if entity @s[team=] run function lobby:costume/squid
tag @s add valid_password

advancement grant @s only lobby:unlocked/squid