execute as @s at @s as @e[type=item_display,tag=inferno_shield,sort=nearest,limit=1] rotated as @s run tp @s ~ ~1 ~ ~10 ~
execute if predicate petroglyph-bossfight:random_chance0.002 at @s unless entity @e[tag=infernos_blaze,distance=..64] run function petroglyph-bossfight:spawn_blazes
execute if predicate petroglyph-bossfight:random_chance0.02 at @s positioned ~ ~1.7 ~ unless entity @e[type=fireball,tag=blaze_debris,distance=..64] on target facing entity @s feet run function petroglyph-bossfight:spawn_blaze_projectile
execute if predicate petroglyph-bossfight:random_chance0.001 at @s run function petroglyph-bossfight:spawn_blaze_shockwave
execute as @s at @s run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.6 0.6 0.6 0 20 normal
execute as @s run effect clear @s