summon minecraft:marker 0.0 0.0 0.0 {Tags:["projectile_motion"]}
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=projectile_motion] run tp @s ^ ^ ^1
summon fireball ~ ~ ~ {ExplosionPower:1b,Tags:["needs_motion","blaze_debris"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRiMWI5Y2UyZTlhNmNlOGE5ODVkMzk3NzZlMjkwODA3N2I4MmU2YTMzM2QyYTgxYTQ0MTQzOGVhYjM5ZjhlMSJ9fX0="}]}}}}
data modify entity @e[type=fireball,tag=needs_motion,limit=1] Motion set from entity @e[type=marker,tag=projectile_motion,limit=1] Pos
tag @e[type=fireball,tag=needs_motion,limit=1] remove needs_motion
kill @e[type=marker,tag=projectile_motion]
execute at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..30] ~ ~ ~ 1 0.83