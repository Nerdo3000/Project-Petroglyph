advancement revoke @s only hydra:water_drink_cactus
scoreboard players remove @s hydration_level 50
execute if score @s hydration_level matches 1501.. run scoreboard players set @s hydration_level 1500
