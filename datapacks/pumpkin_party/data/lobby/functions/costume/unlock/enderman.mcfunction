#First Time 
tellraw @s[advancements={lobby:unlocked/enderman=true},tag=!tmp_all_costumes,tag=!ul_enderman] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Enderman Costume\""}]
tellraw @s[advancements={lobby:unlocked/enderman=true},tag=!tmp_all_costumes,tag=!ul_enderman] ["",{"text":"Password: "},{"text":"\"WHOAREYOULOOKINGAT\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"WHOAREYOULOOKINGAT"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_enderman] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/enderman=true}] add ul_enderman
execute if entity @s[team=] run function lobby:costume/enderman
tag @s add valid_password

advancement grant @s only lobby:unlocked/enderman
