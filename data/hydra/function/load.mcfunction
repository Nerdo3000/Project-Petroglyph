scoreboard objectives add hydration_level dummy
scoreboard objectives add hydration_rate dummy
function hydra:tick_thirst
gamerule waterSourceConversion false

scoreboard objectives add hasDied deathCount

scoreboard objectives add hydra.distance_from_start dummy
