fill -995 65 1022 -1005 64 1022 magenta_stained_glass

fill -993 81 1023 -1007 64 1023 magenta_concrete replace #concrete

fill -986 71 1019 -1015 68 1013 pink_glazed_terracotta[facing=north] replace pink_glazed_terracotta
fill -986 71 1019 -1015 68 1013 magenta_glazed_terracotta[facing=north] replace magenta_glazed_terracotta

fill -986 71 1019 -1015 68 1013 pink_glazed_terracotta[facing=north] replace quartz_pillar[axis=y]
fill -986 71 1019 -1015 68 1013 magenta_glazed_terracotta[facing=north] replace quartz_pillar[axis=x]

data modify entity @e[type=armor_stand,tag=wd_warden,limit=1,sort=nearest] ArmorItems[3].tag.CustomModelData set value 2