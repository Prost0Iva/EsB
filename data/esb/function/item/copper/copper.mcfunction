execute as @a if items entity @s weapon.* stone_sword[custom_data={copper_sword:1b}] run function esb:item/copper/sword
execute as @a if items entity @s weapon.* stone_axe[custom_data={copper_axe:1b}] run function esb:item/copper/axe
execute as @a if items entity @s weapon.* stone_pickaxe[custom_data={copper_pickaxe:1b}] run function esb:item/copper/pickaxe
execute as @a if items entity @s weapon.* stone_hoe[custom_data={copper_hoe:1b}] run function esb:item/copper/hoe
execute as @a if items entity @s weapon.* stone_shovel[custom_data={copper_shovel:1b}] run function esb:item/copper/shovel
execute as @a if items entity @s armor.head netherite_helmet[custom_data={copper_helmet:1b}] if items entity @s armor.chest netherite_chestplate[custom_data={copper_chestplate:1b}] if items entity @s armor.legs netherite_leggings[custom_data={copper_leggings:1b}] if items entity @s armor.feet netherite_boots[custom_data={copper_boots:1b}] run function esb:item/copper/armor
execute as @a if items entity @s weapon.* bow[custom_data={copper_bow:1b}] run function esb:item/copper/bow
execute as @e[type=#arrows,tag=copper_bow] run function esb:item/copper/bow_arrow
execute as @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{copper_arrow:1b}}}}] run function esb:item/copper/arrow