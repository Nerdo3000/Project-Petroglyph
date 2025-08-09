schedule function bossfight:spawn_loop_mummy 20s replace

execute as @e[type=husk,tag=boss] at @s if entity @a[distance=..15] run function bossfight:spawn_mummy

execute as @e[type=husk,tag=boss] at @s as @a[distance=..15] run playsound minecraft:entity.husk.ambient hostile @s ~ ~ ~ 0.16 0.88
execute as @e[type=husk,tag=boss] at @s as @a[distance=..15] run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 0.36 0.65