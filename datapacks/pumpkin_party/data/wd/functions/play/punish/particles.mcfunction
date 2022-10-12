particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^1 positioned ~ ~-1 ~ unless entity @a[scores={wd_mistake=1..},dy=-1] positioned ~ ~1 ~ run function wd:play/punish/particles
