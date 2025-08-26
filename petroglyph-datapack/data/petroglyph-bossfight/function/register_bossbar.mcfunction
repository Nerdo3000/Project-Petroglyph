$bossbar add petroglpyh-pharao-$(score) "Awakend Pharao"
$bossbar add petroglpyh-pharao-$(score) name 
$bossbar set petroglpyh-pharao-$(score) max 120
$bossbar set petroglpyh-pharao-$(score) style notched_20
$bossbar set petroglpyh-pharao-$(score) color yellow
$execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[bossbar],data:{petroglpyh-id:$(score)}}
$tag @s add petroglpyh-pharao-$(score)