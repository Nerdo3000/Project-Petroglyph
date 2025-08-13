execute as @s on target if predicate petroglyph-worldgen:barrel_used run return fail
execute as @s on target run advancement grant @s only petroglyph-worldgen:genarates_loot
execute as @s if data entity @s interaction.player on passengers run scoreboard players set @s petroglyph.barrel_cooldown 100
execute as @s if data entity @s interaction.player run scoreboard players set @s petroglyph.barrel_cooldown 100