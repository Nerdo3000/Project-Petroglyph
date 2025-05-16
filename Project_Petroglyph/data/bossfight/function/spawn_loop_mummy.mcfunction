schedule function bossfight:spawn_loop_mummy 20s replace

execute as @e[tag=boss] at @s if entity @a[distance=..15] rotated as @s run function bossfight:spawn_mummy with entity @s

