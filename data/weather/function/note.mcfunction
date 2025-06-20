#execute as @a at @s if predicate weather:sky run particle minecraft:dust_pillar{block_state:sand} ~ ~ ~ -5 -5 -5 0.11 2000 force @s
#execute as @a at @s if predicate weather:sky run particle minecraft:dust_color_transition{from_color:[0.87890625,0.74609375,0.5703125], scale:1, to_color:[0.87890625,0.74609375,0.5703125]} ~ ~ ~ -5 -5 -5 0.11 5000 force @s
#execute as @a at @s if predicate weather:sky run effect give @s minecraft:darkness 2 0 true
#execute as @a at @s if predicate weather:sky run particle minecraft:falling_dust{block_state:sand} ~ ~ ~ -5 -5 -5 1 2000 force @s

#execute as @a at @s run summon marker ~ ~ ~ {Tags:[sandstorm, sandstorm_spread]}
#execute as @e[tag=sandstorm_spread] at @s run spreadplayers ~ ~ 16 16 false @s
#execute as @e[tag=sandstorm_spread] at @s positioned over motion_blocking run tp ~ ~5 ~
#execute as @e[tag=sandstorm_spread] run tag @s remove sandstorm_spread

#execute as @e[tag=sandstorm] at @s run particle minecraft:dust_pillar{block_state:sand} ~ ~ ~ 2.5 2.5 2.5 1 300 force
#execute as @e[tag=sandstorm] if predicate weather:random run kill @s

execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~5 ~5 ~5 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~5 ~5 ~ 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~5 ~5 ~-5 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~ ~5 ~5 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~ ~5 ~ 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~ ~5 ~-5 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~-5 ~5 ~5 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~-5 ~5 ~ 2.5 2.5 2.5 1 300 force
execute as @a at @s positioned over motion_blocking run particle minecraft:dust_pillar{block_state:sand} ~-5 ~5 ~-5 2.5 2.5 2.5 1 300 force