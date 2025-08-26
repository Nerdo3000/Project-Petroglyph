scoreboard players add @s petroglyph-hydra.distance_from_start 2
execute if score @s petroglyph-hydra.distance_from_start matches 800.. run return fail
execute if block ^ ^ ^ #petroglyph-hydra:crafting run return 1
execute if block ^ ^ ^ #petroglyph-hydra:water run return fail
execute if block ^ ^ ^ #petroglyph-hydra:waterloggable[waterlogged=true] run return fail
execute unless block ^ ^ ^ #petroglyph-hydra:ray_pass_through run return fail
execute positioned ^ ^ ^0.02 run return run function petroglyph-hydra:raycast_crafting_table