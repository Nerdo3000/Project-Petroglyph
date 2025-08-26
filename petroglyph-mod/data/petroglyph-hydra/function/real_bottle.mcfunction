execute if items entity @s weapon.mainhand recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_item",item:"minecraft:glass_bottle"}
execute if items entity @s weapon.offhand recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s weapon.offhand {function:"minecraft:set_item",item:"minecraft:glass_bottle"}

#execute store result storage bottle count int 1 run data get entity @s SelectedItem.count
#data modify storage bottle hand set value "mainhand"
#execute if items entity @s weapon.mainhand recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run function petroglyph-hydra:real_bottle_slot with storage bottle

#execute store result storage bottle count int 1 run data get entity @s equipment.offhand.count
#data modify storage bottle hand set value "offhand"
#execute if items entity @s weapon.offhand recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run function petroglyph-hydra:real_bottle_slot with storage bottle
