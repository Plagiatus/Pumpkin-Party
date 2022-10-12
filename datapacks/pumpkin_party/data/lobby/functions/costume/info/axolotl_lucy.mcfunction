function lobby:costume/info/not_unlocked_yet_message

function lobby:costume/info/purchase_trigger
execute if score @s candies >= @e[type=minecraft:armor_stand,distance=..1.5,limit=1,tag=Costume] const run tellraw @s ["",{"text":"["},{"text":"Purchase Costume","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger buyCostume set 5021"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to unlock the costume."}}},{"text":"]"}]