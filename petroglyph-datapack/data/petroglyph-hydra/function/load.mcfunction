scoreboard objectives add petroglyph-hydration_level dummy
scoreboard objectives add petroglyph-hydration_rate dummy
function petroglyph-hydra:tick_thirst
gamerule waterSourceConversion false

scoreboard objectives add hasDied deathCount

scoreboard objectives add petroglyph-hydra.distance_from_start dummy
