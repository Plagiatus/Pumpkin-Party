#First Time 
tellraw @s[advancements={lobby:unlocked/glow_squid=true},tag=!tmp_all_costumes,tag=!ul_glow_squid] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"glow_squid Costume\""}]
tellraw @s[advancements={lobby:unlocked/glow_squid=true},tag=!tmp_all_costumes,tag=!ul_glow_squid] ["",{"text":"Password: "},{"text":"\"GLOWBLUBB\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"GLOWBLUBB"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_glow_squid] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/glow_squid=true}] add ul_glow_squid
execute if entity @s[team=] run function lobby:costume/glow_squid
tag @s add valid_password

advancement grant @s only lobby:unlocked/glow_squid