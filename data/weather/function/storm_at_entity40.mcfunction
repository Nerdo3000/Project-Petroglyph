execute store result storage minecraft:random X int 1 run random value -40..40
execute store result storage minecraft:random Y int 1 run random value 7..15
execute store result storage minecraft:random Z int 1 run random value -40..40
execute at @s unless biome ~ ~ ~ #is_badlands unless biome ~ ~ ~ desert run data modify storage minecraft:random color set value [0,0,1]
execute at @s if biome ~ ~ ~ #is_badlands run data modify storage minecraft:random color set value [0.625,0.3515625,0.1328125]
execute at @s if biome ~ ~ ~ desert run data modify storage minecraft:random color set value [0.86328125,0.84375,0.67578125]
execute as @s run function weather:storm_at_pos with storage minecraft:random