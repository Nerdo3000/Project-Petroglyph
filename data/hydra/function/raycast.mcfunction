execute as @s run scoreboard players add @s hydra.distance_from_start 2
execute if score @s hydra.distance_from_start matches 800.. run return fail
execute unless block ^ ^ ^ #hydra:ray_pass_through run return fail
execute unless block ^ ^ ^ water positioned ^ ^ ^0.02 run return run function hydra:raycast
execute if block ^ ^ ^ water run return 1