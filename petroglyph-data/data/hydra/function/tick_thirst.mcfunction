scoreboard players set @a hydration_rate 1
execute as @a if biome ~ ~ ~ #minecraft:is_badlands run scoreboard players add @s hydration_rate 1
execute as @a if predicate hydra:jumping run scoreboard players add @s hydration_rate 1
execute as @a if predicate hydra:sprinting run scoreboard players add @s hydration_rate 1
execute as @a if predicate hydra:sky_light unless predicate hydra:night_time run scoreboard players add @s hydration_rate 2
execute as @a if dimension minecraft:the_nether run scoreboard players add @s hydration_rate 3
execute as @a at @s if entity @e[tag=boss,distance=..50] run scoreboard players add @s hydration_rate 5

execute as @a[advancements={gembag:gods_flower=true}] if score @s hydration_rate matches 3.. run scoreboard players remove @s hydration_rate 3

execute as @a if items entity @s armor.feet leather_boots[minecraft:item_name="Dune Armor Boots"] run scoreboard players remove @s hydration_rate 1
execute as @a if items entity @s armor.legs leather_leggings[minecraft:item_name="Dune Armor Leggings"] run scoreboard players remove @s hydration_rate 1
execute as @a if items entity @s armor.chest leather_chestplate[minecraft:item_name="Dune Armor Chestplate"] run scoreboard players remove @s hydration_rate 1
execute as @a if items entity @s armor.head light_gray_stained_glass[minecraft:item_name="Dune Armor Helmet"] run scoreboard players remove @s hydration_rate 1

execute as @a if score @s hydration_rate matches ..0 run scoreboard players set @s hydration_rate 0

execute as @a if entity @s[gamemode=!survival] if entity @s[gamemode=!adventure] run scoreboard players set @s hydration_rate 0

execute as @a run scoreboard players operation @s hydration_level -= @s hydration_rate 
execute as @a if score @s hydration_level matches ..0 run damage @s 4 minecraft:dry_out
execute as @a if score @s hydration_level matches ..20 run effect give @s minecraft:nausea 15 0 false 

schedule function hydra:tick_thirst 2s replace
