loot replace entity @s armor.head loot petroglyph-bossfight:pharao_head
item replace entity @s armor.chest with minecraft:golden_chestplate
item replace entity @s armor.legs with minecraft:golden_leggings
item replace entity @s armor.feet with minecraft:golden_boots
loot replace entity @s weapon.mainhand loot petroglyph-gembag:artifacts/ancient_sword
loot replace entity @s weapon.offhand loot petroglyph-gembag:artifacts/balance_axe

data modify entity @s drop_chances.head set value 0f
data modify entity @s drop_chances.chest set value 0f
data modify entity @s drop_chances.legs set value 0f
data modify entity @s drop_chances.feet set value 0f
data modify entity @s drop_chances.mainhand set value 1f
data modify entity @s drop_chances.offhand set value 1f

scoreboard players add 0 petroglpyh-uuid_counter 1
scoreboard players operation @s petroglpyh-uuid = 0 petroglpyh-uuid_counter
execute store result storage minecraft:tmp score int 1 run scoreboard players get @s petroglpyh-uuid
function petroglyph-bossfight:register_bossbar with storage minecraft:tmp

tag @s remove boss_setup
