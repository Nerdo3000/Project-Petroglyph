execute store result storage minecraft:random X int 1 run random value -20..20
execute store result storage minecraft:random Y int 1 run random value 13..22
execute store result storage minecraft:random Z int 1 run random value -20..20
execute at @s unless biome ~ ~ ~ #is_badlands unless biome ~ ~ ~ #petroglyph-worldgen:desert_like unless biome ~ ~ ~ petroglyph-worldgen:pyroa run data modify storage minecraft:random color set value [0,0,1]
execute at @s if biome ~ ~ ~ #is_badlands run data modify storage minecraft:random color set value [0.625,0.3515625,0.1328125]
execute at @s if biome ~ ~ ~ #petroglyph-worldgen:desert_like run data modify storage minecraft:random color set value [0.86328125,0.84375,0.67578125]
execute at @s if biome ~ ~ ~ petroglyph-worldgen:pyroa run data modify storage minecraft:random color set value [0.4,0.4,0.4]
function petroglyph-weather:storm_at_pos with storage minecraft:random