execute positioned -518 83 0 facing entity @a[scores={wd_mistake=1..}] eyes positioned ^ ^ ^1 run function wd:play/punish/particles

# todo: switch to proper cutscene later
schedule function wd:play/punish/remove_lives 2t
schedule function wd:play/punish/end 2s