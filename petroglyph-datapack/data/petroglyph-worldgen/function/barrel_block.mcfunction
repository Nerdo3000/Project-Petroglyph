execute as @s if score @s petroglyph.barrel_cooldown matches 0.. run data modify entity @s block_state.Properties."open" set value "true"
execute as @s if score @s petroglyph.barrel_cooldown matches ..0 run data modify entity @s block_state.Properties."open" set value "false"
