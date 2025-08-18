execute as @s run advancement revoke @s only petroglyph-bossfight:fire
execute as @s unless items entity @s weapon.* minecraft:shield[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:inferno",levels:1}]] run return fail
execute as @s at @s on attacker run damage @s 6 in_fire at ~ ~ ~
execute as @s on attacker run effect give @s minecraft:glowing 20 1
execute as @s on attacker run data modify entity @s Fire set value 400s