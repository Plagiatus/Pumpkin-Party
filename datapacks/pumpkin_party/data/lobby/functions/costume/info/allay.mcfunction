function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Weird Recipes","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Collect at least one of every ingredient from the map."}}},{"text":" in the \"Brewing Contest\" tab.\n"}]
