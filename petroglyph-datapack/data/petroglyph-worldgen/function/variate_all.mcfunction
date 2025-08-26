schedule function petroglyph-worldgen:variate_all 20 replace 
execute as @e[type=skeleton,tag=!petroglyph-variation] run function petroglyph-worldgen:variate_skeleton
execute as @e[type=zombie,tag=!petroglyph-variation] run function petroglyph-worldgen:variate_zombie

execute as @e[type=minecraft:armor_stand,tag=equip_fort_sword] run function petroglyph-worldgen:variate_fort_armor_stand_sword
execute as @e[type=minecraft:armor_stand,tag=equip_fort_bow] run function petroglyph-worldgen:variate_fort_armor_stand_bow