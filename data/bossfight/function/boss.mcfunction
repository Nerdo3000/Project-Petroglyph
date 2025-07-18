execute at @s run bossbar set minecraft:pharao players @a[distance=..50]

bossbar add pharao "Awakend Pharao"
bossbar set minecraft:pharao max 120
bossbar set minecraft:pharao style notched_20
bossbar set minecraft:pharao color yellow

execute store result bossbar minecraft:pharao value run data get entity @s Health

execute store result score @s boss_health run data get entity @s Health 1
execute at @s if score @s boss_health matches ..60 if entity @s[type=husk,tag=!half] run effect give @a[distance=..50] minecraft:darkness 10 0 false
execute at @s if score @s boss_health matches ..60 if entity @s[type=husk,tag=!half] run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..50] ~ ~ ~
execute if score @s boss_health matches ..60 if entity @s[type=husk,tag=!half] run tag @s add half

execute as @e[type=husk,tag=half] at @s run effect give @e[type=husk,distance=..20] minecraft:speed 2 1 false
execute as @e[type=husk,tag=half] at @s run effect give @a[distance=..20, gamemode=adventure] minecraft:darkness 2 0 false