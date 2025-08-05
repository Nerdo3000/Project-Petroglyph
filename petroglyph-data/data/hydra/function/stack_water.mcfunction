execute as @a if items entity @s inventory.0 minecraft:potion run item modify entity @s inventory.0 hydra:stack_size_32
execute as @a if items entity @s inventory.1 minecraft:potion run item modify entity @s inventory.1 hydra:stack_size_32
execute as @a if items entity @s inventory.2 minecraft:potion run item modify entity @s inventory.2 hydra:stack_size_32
execute as @a if items entity @s inventory.3 minecraft:potion run item modify entity @s inventory.3 hydra:stack_size_32
execute as @a if items entity @s inventory.4 minecraft:potion run item modify entity @s inventory.4 hydra:stack_size_32
execute as @a if items entity @s inventory.5 minecraft:potion run item modify entity @s inventory.5 hydra:stack_size_32
execute as @a if items entity @s inventory.6 minecraft:potion run item modify entity @s inventory.6 hydra:stack_size_32
execute as @a if items entity @s inventory.7 minecraft:potion run item modify entity @s inventory.7 hydra:stack_size_32
execute as @a if items entity @s inventory.8 minecraft:potion run item modify entity @s inventory.8 hydra:stack_size_32
execute as @a if items entity @s inventory.9 minecraft:potion run item modify entity @s inventory.9 hydra:stack_size_32
execute as @a if items entity @s inventory.10 minecraft:potion run item modify entity @s inventory.10 hydra:stack_size_32
execute as @a if items entity @s inventory.11 minecraft:potion run item modify entity @s inventory.11 hydra:stack_size_32
execute as @a if items entity @s inventory.12 minecraft:potion run item modify entity @s inventory.12 hydra:stack_size_32
execute as @a if items entity @s inventory.13 minecraft:potion run item modify entity @s inventory.13 hydra:stack_size_32
execute as @a if items entity @s inventory.14 minecraft:potion run item modify entity @s inventory.14 hydra:stack_size_32
execute as @a if items entity @s inventory.15 minecraft:potion run item modify entity @s inventory.15 hydra:stack_size_32
execute as @a if items entity @s inventory.16 minecraft:potion run item modify entity @s inventory.16 hydra:stack_size_32
execute as @a if items entity @s inventory.17 minecraft:potion run item modify entity @s inventory.17 hydra:stack_size_32
execute as @a if items entity @s inventory.18 minecraft:potion run item modify entity @s inventory.18 hydra:stack_size_32
execute as @a if items entity @s inventory.19 minecraft:potion run item modify entity @s inventory.19 hydra:stack_size_32
execute as @a if items entity @s inventory.20 minecraft:potion run item modify entity @s inventory.20 hydra:stack_size_32
execute as @a if items entity @s inventory.21 minecraft:potion run item modify entity @s inventory.21 hydra:stack_size_32
execute as @a if items entity @s inventory.22 minecraft:potion run item modify entity @s inventory.22 hydra:stack_size_32
execute as @a if items entity @s inventory.23 minecraft:potion run item modify entity @s inventory.23 hydra:stack_size_32
execute as @a if items entity @s inventory.24 minecraft:potion run item modify entity @s inventory.24 hydra:stack_size_32
execute as @a if items entity @s inventory.25 minecraft:potion run item modify entity @s inventory.25 hydra:stack_size_32
execute as @a if items entity @s inventory.26 minecraft:potion run item modify entity @s inventory.26 hydra:stack_size_32

execute as @a if items entity @s hotbar.0 minecraft:potion run item modify entity @s hotbar.0 hydra:stack_size_32
execute as @a if items entity @s hotbar.1 minecraft:potion run item modify entity @s hotbar.1 hydra:stack_size_32
execute as @a if items entity @s hotbar.2 minecraft:potion run item modify entity @s hotbar.2 hydra:stack_size_32
execute as @a if items entity @s hotbar.3 minecraft:potion run item modify entity @s hotbar.3 hydra:stack_size_32
execute as @a if items entity @s hotbar.4 minecraft:potion run item modify entity @s hotbar.4 hydra:stack_size_32
execute as @a if items entity @s hotbar.5 minecraft:potion run item modify entity @s hotbar.5 hydra:stack_size_32
execute as @a if items entity @s hotbar.6 minecraft:potion run item modify entity @s hotbar.6 hydra:stack_size_32
execute as @a if items entity @s hotbar.7 minecraft:potion run item modify entity @s hotbar.7 hydra:stack_size_32
execute as @a if items entity @s hotbar.8 minecraft:potion run item modify entity @s hotbar.8 hydra:stack_size_32

execute as @a if items entity @s weapon.offhand minecraft:potion run item modify entity @s weapon.offhand hydra:stack_size_32
execute as @a if items entity @s player.cursor minecraft:potion run item modify entity @s player.cursor hydra:stack_size_32

execute as @a if items entity @s player.crafting.0 minecraft:potion run item modify entity @s player.crafting.0 hydra:stack_size_32
execute as @a if items entity @s player.crafting.1 minecraft:potion run item modify entity @s player.crafting.1 hydra:stack_size_32
execute as @a if items entity @s player.crafting.2 minecraft:potion run item modify entity @s player.crafting.2 hydra:stack_size_32
execute as @a if items entity @s player.crafting.3 minecraft:potion run item modify entity @s player.crafting.3 hydra:stack_size_32

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:potion"}}] run data modify entity @s Item.components merge value {"minecraft:max_stack_size": 32}
