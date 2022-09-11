#First Time 
tellraw @s[advancements={lobby:unlocked/warden=true},tag=!tmp_all_costumes,tag=!ul_warden] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Warden Costume\""}]
tellraw @s[advancements={lobby:unlocked/warden=true},tag=!tmp_all_costumes,tag=!ul_warden] ["",{"text":"Password: "},{"text":"\"SILENTSCREAMER\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SILENTSCREAMER"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_warden] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/warden=true}] add ul_warden
execute if entity @s[team=] run function lobby:costume/warden
tag @s add valid_password

advancement grant @s only lobby:unlocked/warden