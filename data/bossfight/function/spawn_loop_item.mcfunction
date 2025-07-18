schedule function bossfight:spawn_loop_item 5s replace

execute as @e[type=husk,tag=boss] run effect clear @s
execute as @e[type=husk,tag=boss] at @s if entity @a[distance=..50] if score @s boss_health matches ..60 at @a run function bossfight:spawn_item

