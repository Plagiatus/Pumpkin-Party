execute if score tot_difficulty settings matches 0 run tellraw @s ["",{"text": "Trick or Treat", "color": "#ff6600"}," (",{"text":"normal","color": "#84A887"},")\n",{"text":"- There is only one difficulty."},"\n"]
execute if score tot_difficulty settings matches 1 run tellraw @s ["",{"text": "Trick or Treat", "color": "#ff6600"}," (",{"text":"hard","color": "#AA8686"},")\n",{"text":"- There is only one difficulty."},"\n"]
execute if score tot_difficulty settings matches 2 run tellraw @s ["",{"text": "Trick or Treat", "color": "#ff6600"}," (",{"text":"nightmare","color": "#AD5454"},")\n",{"text":"- There is only one difficulty."},"\n"]