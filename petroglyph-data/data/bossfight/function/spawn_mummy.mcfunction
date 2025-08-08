summon husk ^1.5 ^ ^ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["mummy","mummy_setup"],attributes:[{id:"minecraft:spawn_reinforcements",base:0}]}
summon husk ^-1.5 ^ ^ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["mummy","mummy_setup"],attributes:[{id:"minecraft:spawn_reinforcements",base:0}]}

execute as @e[type=husk,tag=mummy_setup] run loot replace entity @s armor.head loot bossfight:mummy_head
execute as @e[type=husk,tag=mummy_setup] run loot replace entity @s armor.chest loot bossfight:mummy_chest
execute as @e[type=husk,tag=mummy_setup] run loot replace entity @s armor.legs loot bossfight:mummy_legs
execute as @e[type=husk,tag=mummy_setup] run loot replace entity @s armor.feet loot bossfight:mummy_feet
execute as @e[type=husk,tag=mummy_setup] run data modify entity @s drop_chances.head set value 0f
execute as @e[type=husk,tag=mummy_setup] run data modify entity @s drop_chances.chest set value 0f
execute as @e[type=husk,tag=mummy_setup] run data modify entity @s drop_chances.legs set value 0f
execute as @e[type=husk,tag=mummy_setup] run data modify entity @s drop_chances.feet set value 0f

execute as @e[type=husk,tag=mummy_setup] run tag @s remove mummy_setup
