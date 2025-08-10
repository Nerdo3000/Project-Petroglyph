execute as @a if items entity @s inventory.0 minecraft:potion run item modify entity @s inventory.0 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.1 minecraft:potion run item modify entity @s inventory.1 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.2 minecraft:potion run item modify entity @s inventory.2 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.3 minecraft:potion run item modify entity @s inventory.3 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.4 minecraft:potion run item modify entity @s inventory.4 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.5 minecraft:potion run item modify entity @s inventory.5 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.6 minecraft:potion run item modify entity @s inventory.6 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.7 minecraft:potion run item modify entity @s inventory.7 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.8 minecraft:potion run item modify entity @s inventory.8 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.9 minecraft:potion run item modify entity @s inventory.9 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.10 minecraft:potion run item modify entity @s inventory.10 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.11 minecraft:potion run item modify entity @s inventory.11 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.12 minecraft:potion run item modify entity @s inventory.12 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.13 minecraft:potion run item modify entity @s inventory.13 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.14 minecraft:potion run item modify entity @s inventory.14 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.15 minecraft:potion run item modify entity @s inventory.15 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.16 minecraft:potion run item modify entity @s inventory.16 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.17 minecraft:potion run item modify entity @s inventory.17 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.18 minecraft:potion run item modify entity @s inventory.18 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.19 minecraft:potion run item modify entity @s inventory.19 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.20 minecraft:potion run item modify entity @s inventory.20 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.21 minecraft:potion run item modify entity @s inventory.21 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.22 minecraft:potion run item modify entity @s inventory.22 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.23 minecraft:potion run item modify entity @s inventory.23 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.24 minecraft:potion run item modify entity @s inventory.24 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.25 minecraft:potion run item modify entity @s inventory.25 petroglyph-hydra:stack_size_32
execute as @a if items entity @s inventory.26 minecraft:potion run item modify entity @s inventory.26 petroglyph-hydra:stack_size_32

execute as @a if items entity @s hotbar.0 minecraft:potion run item modify entity @s hotbar.0 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.1 minecraft:potion run item modify entity @s hotbar.1 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.2 minecraft:potion run item modify entity @s hotbar.2 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.3 minecraft:potion run item modify entity @s hotbar.3 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.4 minecraft:potion run item modify entity @s hotbar.4 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.5 minecraft:potion run item modify entity @s hotbar.5 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.6 minecraft:potion run item modify entity @s hotbar.6 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.7 minecraft:potion run item modify entity @s hotbar.7 petroglyph-hydra:stack_size_32
execute as @a if items entity @s hotbar.8 minecraft:potion run item modify entity @s hotbar.8 petroglyph-hydra:stack_size_32

execute as @a if items entity @s weapon.offhand minecraft:potion run item modify entity @s weapon.offhand petroglyph-hydra:stack_size_32
execute as @a if items entity @s player.cursor minecraft:potion run item modify entity @s player.cursor petroglyph-hydra:stack_size_32

execute as @a if items entity @s player.crafting.0 minecraft:potion run item modify entity @s player.crafting.0 petroglyph-hydra:stack_size_32
execute as @a if items entity @s player.crafting.1 minecraft:potion run item modify entity @s player.crafting.1 petroglyph-hydra:stack_size_32
execute as @a if items entity @s player.crafting.2 minecraft:potion run item modify entity @s player.crafting.2 petroglyph-hydra:stack_size_32
execute as @a if items entity @s player.crafting.3 minecraft:potion run item modify entity @s player.crafting.3 petroglyph-hydra:stack_size_32

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:potion"}}] run data modify entity @s Item.components merge value {"minecraft:max_stack_size": 32}
