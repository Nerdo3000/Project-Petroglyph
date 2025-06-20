execute as @s if block ~ ~ ~ water run function hydra:drop_bottles_mainhand
execute as @s if block ~ ~ ~0.2 water run function hydra:drop_bottles_mainhand
execute as @s if block ~ ~ ~-0.2 water run function hydra:drop_bottles_mainhand
execute as @s if block ~0.2 ~ ~ water run function hydra:drop_bottles_mainhand
execute as @s if block ~-0.2 ~ ~ water run function hydra:drop_bottles_mainhand
execute as @s if block ~ ~0.2 ~ water run function hydra:drop_bottles_mainhand
execute as @s if block ~ ~-0.2 ~ water run function hydra:drop_bottles_mainhand
execute as @s unless block ~ ~ ~ #hydra:rain_blocking positioned ^ ^ ^1 if entity @s[distance=..7] run function hydra:raycast_mainhand
