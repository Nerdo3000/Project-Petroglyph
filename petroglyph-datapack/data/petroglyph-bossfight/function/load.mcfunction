scoreboard objectives add boss_health dummy
scoreboard objectives add petroglpyh-uuid_counter dummy
scoreboard objectives add petroglpyh-uuid dummy
schedule function petroglyph-bossfight:spawn_loop_mummy 20s replace
schedule function petroglyph-bossfight:spawn_loop_bug 2s replace
schedule function petroglyph-bossfight:spawn_loop_item 5s replace
