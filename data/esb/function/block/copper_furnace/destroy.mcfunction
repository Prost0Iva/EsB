loot spawn ~.5 ~.5 ~.5 loot esb:block/copper_furnace
execute positioned ~.5 ~.5 ~.5 run kill @n[type=item,nbt={Item:{id:"minecraft:furnace",count:1}}]
execute if entity @s[tag=ns] positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.-x]
execute if entity @s[tag=ns] positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,tag=block,tag=side.-z]
execute if entity @s[tag=ns] positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.x]
execute if entity @s[tag=ns] positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,tag=block,tag=side.y]
execute if entity @s[tag=ns] positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,tag=block,tag=side.z]
execute if entity @s[tag=we] positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,tag=block,tag=side.y]
execute if entity @s[tag=we] positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,tag=block,tag=side.-x]
execute if entity @s[tag=we] positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.-z]
execute if entity @s[tag=we] positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,tag=block,tag=side.x]
execute if entity @s[tag=we] positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.z]
kill @s