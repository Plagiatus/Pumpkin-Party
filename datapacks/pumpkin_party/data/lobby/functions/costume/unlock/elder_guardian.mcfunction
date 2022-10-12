#First Time 
tellraw @s[advancements={lobby:unlocked/elder_guardian=true},tag=!tmp_all_costumes,tag=!ul_elder_guardian] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Elder Guardian Costume\""}]
tellraw @s[advancements={lobby:unlocked/elder_guardian=true},tag=!tmp_all_costumes,tag=!ul_elder_guardian] ["",{"text":"Password: "},{"text":"\"NOMININGALLOWED\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"NOMININGALLOWED"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_elder_guardian] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/elder_guardian=true}] add ul_elder_guardian
execute if entity @s[team=] run function lobby:costume/elder_guardian
tag @s add valid_password

advancement grant @s only lobby:unlocked/elder_guardian