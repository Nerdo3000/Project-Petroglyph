scoreboard objectives add checked_bottles dummy
scoreboard objectives add hydration_level dummy
scoreboard objectives add hydration_rate dummy
function hydra:tick_thirst
gamerule waterSourceConversion false

scoreboard objectives add hasDied deathCount

scoreboard objectives add show_no_water dummy
