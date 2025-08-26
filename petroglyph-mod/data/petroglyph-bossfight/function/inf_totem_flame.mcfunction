advancement revoke @s only petroglyph-bossfight:flame_totem
execute as @s[tag=!totem_in_offhand] run loot give @s loot petroglyph-bossfight:totem_fire
execute as @s[tag=totem_in_offhand] run loot replace entity @s weapon.offhand loot petroglyph-bossfight:totem_fire
