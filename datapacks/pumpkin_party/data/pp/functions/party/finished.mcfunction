function lobby:signs/reset_all

# TODO: announce winner and give advancement

execute as @a run scoreboard players operation @s candies += @s points
scoreboard players set @a points 0