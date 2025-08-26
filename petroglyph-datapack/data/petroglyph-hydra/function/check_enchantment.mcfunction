execute unless items entity @s armor.* *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction"}]] run return fail

execute if items entity @s armor.feet *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:1}]] run scoreboard players remove @s petroglyph-hydration_rate 1
execute if items entity @s armor.legs *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:1}]] run scoreboard players remove @s petroglyph-hydration_rate 1
execute if items entity @s armor.chest *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:1}]] run scoreboard players remove @s petroglyph-hydration_rate 1
execute if items entity @s armor.head *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:1}]] run scoreboard players remove @s petroglyph-hydration_rate 1

execute if items entity @s armor.feet *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:2}]] run scoreboard players remove @s petroglyph-hydration_rate 2
execute if items entity @s armor.legs *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:2}]] run scoreboard players remove @s petroglyph-hydration_rate 2
execute if items entity @s armor.chest *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:2}]] run scoreboard players remove @s petroglyph-hydration_rate 2
execute if items entity @s armor.head *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:2}]] run scoreboard players remove @s petroglyph-hydration_rate 2

execute if items entity @s armor.feet *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:3}]] run scoreboard players remove @s petroglyph-hydration_rate 3
execute if items entity @s armor.legs *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:3}]] run scoreboard players remove @s petroglyph-hydration_rate 3
execute if items entity @s armor.chest *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:3}]] run scoreboard players remove @s petroglyph-hydration_rate 3
execute if items entity @s armor.head *[minecraft:enchantments~[{"enchantments":"petroglyph-gembag:hydration_reduction",levels:3}]] run scoreboard players remove @s petroglyph-hydration_rate 3
