loot replace entity @s armor.head loot petroglyph-worldgen:fort/withering_helmet
loot replace entity @s armor.chest loot petroglyph-worldgen:fort/withering_chest
loot replace entity @s armor.legs loot petroglyph-worldgen:fort/withering_legs
loot replace entity @s armor.feet loot petroglyph-worldgen:fort/withering_feet

loot replace entity @s weapon.mainhand loot petroglyph-worldgen:fort/withering_sword
loot replace entity @s weapon.offhand loot petroglyph-worldgen:fort/withering_shield

tag @s add petroglyph-variation
execute if predicate petroglyph-worldgen:random_chance0.2 run tag @s add armor_stand_alive_sword
tag @s remove equip_fort_sword

execute if entity @s[tag=left_handend_armor_stand] run loot replace entity @s weapon.mainhand loot petroglyph-worldgen:fort/withering_shield
execute if entity @s[tag=left_handend_armor_stand] run loot replace entity @s weapon.offhand loot petroglyph-worldgen:fort/withering_sword

data modify entity @s DisabledSlots set value 4144959