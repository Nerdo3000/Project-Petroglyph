summon minecraft:skeleton ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",show_particles:false,amplifier:0,duration:-1}],Silent:true,"DeathLootTable": "petroglyph-worldgen:fort/withering_sword_ominous_death",Tags:["fort_equip_skeli","petroglyph-variation"],LeftHanded:false,drop_chances:{chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0}}

execute if entity @s[tag=left_handend_armor_stand] run data modify entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] LeftHanded set value true
execute as @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] run loot replace entity @s armor.head loot petroglyph-worldgen:fort/withering_helmet
execute as @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] run loot replace entity @s armor.chest loot petroglyph-worldgen:fort/withering_chest
execute as @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] run loot replace entity @s armor.legs loot petroglyph-worldgen:fort/withering_legs
execute as @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] run loot replace entity @s armor.feet loot petroglyph-worldgen:fort/withering_feet

execute unless items entity @s weapon.* shield run loot replace entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] weapon.mainhand loot petroglyph-worldgen:fort/withering_bow
execute unless items entity @s weapon.* shield run data modify entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] DeathLootTable set value "petroglyph-worldgen:fort/withering_bow_ominous_death"
execute if items entity @s weapon.* shield run loot replace entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] weapon.mainhand loot petroglyph-worldgen:fort/withering_sword
execute if items entity @s weapon.* shield run loot replace entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] weapon.offhand loot petroglyph-worldgen:fort/withering_shield

execute as @s run data modify entity @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] Rotation set from entity @s Rotation

particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.4 0.4 0.4 0 15 normal

tag @e[type=minecraft:skeleton,tag=fort_equip_skeli,limit=1,sort=nearest] remove fort_equip_skeli
kill @s