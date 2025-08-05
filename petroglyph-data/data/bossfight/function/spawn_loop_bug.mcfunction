schedule function bossfight:spawn_loop_bug 2s replace

execute as @e[type=husk,tag=boss] at @s if entity @a[distance=..15] rotated as @s run function bossfight:spawn_bug

