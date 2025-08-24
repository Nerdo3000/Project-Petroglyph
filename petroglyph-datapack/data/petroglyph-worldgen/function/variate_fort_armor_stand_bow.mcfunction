loot replace entity @s armor.head loot petroglyph-worldgen:fort/withering_helmet
loot replace entity @s armor.chest loot petroglyph-worldgen:fort/withering_chest
loot replace entity @s armor.legs loot petroglyph-worldgen:fort/withering_legs
loot replace entity @s armor.feet loot petroglyph-worldgen:fort/withering_feet

loot replace entity @s weapon.mainhand loot petroglyph-worldgen:fort/withering_bow

tag @s add petroglyph-variation
execute if predicate petroglyph-worldgen:random_chance0.2 run tag @s add armor_stand_alive_bow
tag @s remove equip_fort_bow

execute if entity @s[tag=left_handend_armor_stand] run loot replace entity @s weapon.offhand loot petroglyph-worldgen:fort/withering_bow
execute if entity @s[tag=left_handend_armor_stand] run item replace entity @s weapon.mainhand with minecraft:air

data modify entity @s DisabledSlots set value 4144959