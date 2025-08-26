loot replace entity @s armor.head loot petroglyph-worldgen:badland_husk/head
loot replace entity @s armor.chest loot petroglyph-worldgen:badland_husk/chest
loot replace entity @s armor.legs loot petroglyph-worldgen:badland_husk/legs
data modify entity @s drop_chances.head set value 0f
data modify entity @s drop_chances.chest set value 0f
data modify entity @s drop_chances.legs set value 0f
attribute @s scale base set 0.95
tag @s add petroglyph-variation