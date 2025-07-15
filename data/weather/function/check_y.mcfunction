execute as @s at @s positioned over motion_blocking_no_leaves run summon marker ~ ~ ~ {Tags:["position"]}
execute as @s store result score @s highest_y run data get entity @e[type=marker,tag=position,limit=1,sort=nearest] Pos[1] 1
execute as @s store result score @s current_y run data get entity @s Pos[1] 1
execute as @s if score @s current_y >= @s highest_y run effect give @s minecraft:darkness 5 0 true
scoreboard players add @s current_y 20
execute as @s if score @s current_y >= @s highest_y run playsound minecraft:block.sand.idle ambient @s ~ ~ ~ 2 1 1
