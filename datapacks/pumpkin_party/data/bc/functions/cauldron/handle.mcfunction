# show particles 
function bc:cauldron/particles

# check for items
execute positioned ~-2 ~ ~-1 as @e[type=item,dx=3,dy=1,dz=2] run function bc:cauldron/check/thrown_item