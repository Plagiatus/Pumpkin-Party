clear @s #bc:all

replaceitem entity @s weapon.offhand nether_brick{display:{Name:'{"text":"Map","italic": false}'}}
give @s iron_axe{CanDestroy:["minecraft:pumpkin"],Unbreakable:1b}

execute if score @s bc_recipe matches 1 run give @p written_book{title:"Cranium Potion",author:"The Witch",generation:0,pages:['["",{"text":"Cranium Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Pumpkin\\n\\n","color":"#ff6600"},{"text":"- Spider Eye\\n\\n","color":"#64062A"},{"text":"- Apple\\n\\n\\n","color":"red"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 2 run give @s written_book{title:"Metamordhasis Potion",author:"The Witch",generation:0,pages:['["",{"text":"Metamordhasis Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Frog Leg\\n\\n","color":"green"},{"text":"- Creeper Mucus\\n\\n","color":"dark_green"},{"text":"- Gold Nugget\\n\\n\\n","color":"gold"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 3 run give @s written_book{title:"Cure to acid reflux Potion",author:"The Witch",generation:0,pages:['["",{"text":"Cure to acid reflux Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Apple\\n\\n","color":"red"},{"text":"- Silverfish Scales\\n\\n","color":"gray"},{"text":"- Gun Powder\\n\\n\\n","color":"dark_gray"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 4 run give @s written_book{title:"Green Juice™ Potion",author:"The Witch",generation:0,pages:['["",{"text":"Green Juice™ Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Slime\\n\\n","color":"green"},{"text":"- Frog Leg\\n\\n","color":"green"},{"text":"- Creeper Mucus\\n\\n\\n","color":"dark_green"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 5 run give @s written_book{title:"Thick Skin Potion",author:"The Witch",generation:0,pages:['["",{"text":"Thick Skin Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Gold Nugget\\n\\n","color":"gold"},{"text":"- Silverfish Scales\\n\\n","color":"gray"},{"text":"- Slime\\n\\n\\n","color":"green"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 6 run give @s written_book{title:"Papa's Vegan Blend Potion",author:"The Witch",generation:0,pages:['["",{"text":"Papa\'s Vegan Blend Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Pumpkin\\n\\n","color":"#ff6600"},{"text":"- Nether Wart\\n\\n","color":"dark_red"},{"text":"- Apple\\n\\n\\n","color":"red"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 7 run give @s written_book{title:"Morning Leftovers Potion",author:"The Witch",generation:0,pages:['["",{"text":"Morning Leftovers Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Silverfish Scales\\n\\n","color":"gray"},{"text":"- Spider Eye\\n\\n","color":"#64062A"},{"text":"- Gun Powder\\n\\n\\n","color":"dark_gray"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 8 run give @s written_book{title:"Purified Poison Potion",author:"The Witch",generation:0,pages:['["",{"text":"Purified Poison Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Nether Wart\\n\\n","color":"dark_red"},{"text":"- Spider Eye\\n\\n","color":"#64062A"},{"text":"- Frog Leg\\n\\n","color":"green"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 9 run give @s written_book{title:"Gilded Breakfast Potion",author:"The Witch",generation:0,pages:['["",{"text":"Gilded Breakfast Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Pumpkin\\n\\n","color":"#ff6600"},{"text":"- Gold Nugget\\n\\n\\n","color":"gold"},{"text":"- Creeper Mucus\\n\\n\\n","color":"dark_green"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}
execute if score @s bc_recipe matches 10 run give @s written_book{title:"Sticky Bomb Potion",author:"The Witch",generation:0,pages:['["",{"text":"Sticky Bomb Potion\\n\\n","color":"dark_green","bold":true,"underlined":true},{"text":"- Nether Wart\\n\\n","color":"dark_red"},{"text":"- Slime\\n\\n","color":"green"},{"text":"- Gun Powder\\n\\n\\n","color":"dark_gray"},{"text":"Gather them all and brew the potion!","color":"gray","italic":true}]']}