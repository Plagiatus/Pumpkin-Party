#First Time 
tellraw @s[advancements={lobby:unlocked/arch_illager=true},tag=!tmp_all_costumes,tag=!ul_arch_illager] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Arch Illager Costume\""}]
tellraw @s[advancements={lobby:unlocked/arch_illager=true},tag=!tmp_all_costumes,tag=!ul_arch_illager] ["",{"text":"Password: "},{"text":"\"SMALLBUTPOWERFUL\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"SMALLBUTPOWERFUL"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_arch_illager] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/arch_illager=true}] add ul_arch_illager
execute if entity @s[team=] run function lobby:costume/arch_illager
tag @s add valid_password

advancement grant @s only lobby:unlocked/arch_illager