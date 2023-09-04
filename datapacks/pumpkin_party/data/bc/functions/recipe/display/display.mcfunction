# as bc_cauldron armorstand
tag @s add self

execute if score $seconds timer matches ..9 as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s actionbar [{"text":"\uF003\uEf10"},{"nbt": "front_text.messages[0]","block": "~ ~-5 ~","interpret":true},{"nbt": "front_text.messages[1]","block": "~ ~-5 ~","interpret":true},{"nbt": "front_text.messages[2]","block": "~ ~-5 ~","interpret":true},{"score": {"name": "$minutes", "objective": "timer"},"color": "gold"},{"text":":0","color": "gold"},{"score": {"name": "$seconds","objective": "timer"},"color": "gold"}]
execute if score $seconds timer matches 10.. as @a if score @s bc_id = @e[tag=self,limit=1] bc_id run title @s actionbar [{"text":"\uF003\uEf10"},{"nbt": "front_text.messages[0]","block": "~ ~-5 ~","interpret":true},{"nbt": "front_text.messages[1]","block": "~ ~-5 ~","interpret":true},{"nbt": "front_text.messages[2]","block": "~ ~-5 ~","interpret":true},{"score": {"name": "$minutes", "objective": "timer"},"color": "gold"},{"text":":","color": "gold"},{"score": {"name": "$seconds","objective": "timer"},"color": "gold"}]

tag @s remove self