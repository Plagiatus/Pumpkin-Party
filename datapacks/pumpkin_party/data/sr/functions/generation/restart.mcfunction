tellraw @a ["",{"text":"[Spider Run] ","color": "#ff6600"},{"color": "red","text": "Something went wrong while generating the tunnel.\nRestarting...\n"}]

tp @a[tag=sr_generate] -500 64 -500
tag @a remove sr_generate

function sr:generation/prepare