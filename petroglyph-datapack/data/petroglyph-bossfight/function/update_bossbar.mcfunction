$execute at @s run bossbar set petroglpyh-pharao-$(score) players @a[distance=..50]
$execute store result bossbar petroglpyh-pharao-$(score) value run data get entity @s Health
$execute at @s run tp @e[name="petroglpyh-pharao-$(score)"] @s