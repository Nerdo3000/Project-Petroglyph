schedule function petroglyph-worldgen:variate_all 20 replace 
execute as @e[type=skeleton,tag=!petroglyph-variation] run function petroglyph-worldgen:variate_skeleton
execute as @e[type=zombie,tag=!petroglyph-variation] run function petroglyph-worldgen:variate_zombie
