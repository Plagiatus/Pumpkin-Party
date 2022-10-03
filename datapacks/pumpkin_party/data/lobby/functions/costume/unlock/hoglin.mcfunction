#First Time 
tellraw @s[advancements={lobby:unlocked/hoglin=true},tag=!tmp_all_costumes,tag=!ul_hoglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Hoglin Costume\""}]
tellraw @s[advancements={lobby:unlocked/hoglin=true},tag=!tmp_all_costumes,tag=!ul_hoglin] ["",{"text":"Password: "},{"text":"\"HATESSMELLYSHROOMS\"","underlined":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"HATESSMELLYSHROOMS"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to copy the password to your clipboard."}}}]


#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_hoglin] run function lobby:costume/already_unlocked
tag @s[advancements={lobby:unlocked/hoglin=true}] add ul_hoglin
execute if entity @s[team=] run function lobby:costume/hoglin
tag @s add valid_password

advancement grant @s only lobby:unlocked/hoglin