team add wd_play
team modify wd_play collisionRule never
team modify wd_play friendlyFire false
team modify wd_play seeFriendlyInvisibles false

scoreboard objectives add wd_timer dummy
scoreboard objectives add wd_id dummy
scoreboard objectives add wd_lives dummy
scoreboard objectives add wd_phases dummy
scoreboard objectives add wd_mistake dummy
scoreboard objectives add wd_points dummy
scoreboard objectives add wd_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wd_highscore dummy


scoreboard players set 40 const 40
scoreboard players set 4 const 4
scoreboard players set 2 const 2

# ticks between beats
scoreboard players set #normal wd_timer 8
scoreboard players set #hard wd_timer 6
scoreboard players set #nightmare wd_timer 5

# how many mistakes you can make
scoreboard players set #normal wd_lives 4
scoreboard players set #hard wd_lives 2
scoreboard players set #nightmare wd_lives 2

# how many rounds there are
scoreboard players set #normal wd_phases 12
scoreboard players set #hard wd_phases 15
scoreboard players set #nightmare wd_phases 20

# consts
scoreboard players set 24000 const 24000
scoreboard players set warden_spawn_start const 0
scoreboard players set warden_attack_start const 10
scoreboard players set warden_spawn const 280
scoreboard players set warden_attack const 80