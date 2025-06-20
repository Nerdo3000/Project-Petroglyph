bossbar add pharao "Awakend Pharao"
execute at @s run bossbar set minecraft:pharao players @a[distance=..50]

bossbar set minecraft:pharao max 120
bossbar set minecraft:pharao style notched_20
bossbar set minecraft:pharao color yellow

execute as @s store result bossbar minecraft:pharao value run data get entity @s Health

execute as @s store result score @s boss_health run data get entity @s Health 1
execute as @s at @s if score @s boss_health matches ..60 if entity @s[tag=!half] run effect give @a[distance=..50] minecraft:darkness 10 0 false
execute as @s at @s if score @s boss_health matches ..60 if entity @s[tag=!half] run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..50] ~ ~ ~
execute as @s if score @s boss_health matches ..60 if entity @s[tag=!half] run tag @s add half

execute as @e[tag=half] at @s run effect give @e[type=husk,distance=..20] minecraft:speed 2 1 false
execute as @e[tag=half] at @s run effect give @a[distance=..20, gamemode=adventure] minecraft:darkness 2 0 false