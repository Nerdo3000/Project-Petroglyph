execute as @s[nbt={active_effects:[{id:"minecraft:invisibility", amplifier: 7b}]},tag=!totem_offhand] run loot give @s loot petroglyph-bossfight:totem
execute as @s[nbt={active_effects:[{id:"minecraft:invisibility", amplifier: 7b}]},tag=totem_offhand] run loot replace entity @s weapon.offhand loot petroglyph-bossfight:totem
execute as @s[nbt={active_effects:[{id:"minecraft:invisibility", amplifier: 7b}]}] run effect clear @s minecraft:invisibility

execute if items entity @s weapon.offhand minecraft:totem_of_undying[minecraft:item_name="Totem of Eternal Life"] run tag @s add totem_offhand
execute unless items entity @s weapon.offhand minecraft:totem_of_undying[minecraft:item_name="Totem of Eternal Life"] run tag @s remove totem_offhand
