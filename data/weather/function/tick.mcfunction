execute in minecraft:overworld unless predicate weather:rain run return fail
execute as @a run function weather:tick_weather
kill @e[type=marker,tag=position]
