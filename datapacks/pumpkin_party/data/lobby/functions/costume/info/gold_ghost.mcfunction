function lobby:costume/info/not_unlocked_yet_message

tellraw @s ["",{"text":"Finish the achievement "},{"text":"Win Arcade","underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Be the overall winner in a party mode."}}},{"text":" in the \"Pumpkin Party\" tab.\n"}]
