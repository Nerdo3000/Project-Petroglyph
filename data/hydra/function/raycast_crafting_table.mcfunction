scoreboard players add @s hydra.distance_from_start 2
execute if score @s hydra.distance_from_start matches 800.. run return fail
execute if block ^ ^ ^ crafting_table run return 1
execute if block ^ ^ ^ #hydra:water run return fail
execute if block ^ ^ ^ #hydra:waterloggable[waterlogged=true] run return fail
execute unless block ^ ^ ^ #hydra:ray_pass_through run return fail
execute positioned ^ ^ ^0.02 run return run function hydra:raycast_crafting_table