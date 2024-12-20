loot spawn ~ ~ ~ loot esb:block/live_spruce_slab
loot spawn ~ ~ ~ loot esb:block/live_spruce_slab
execute positioned ~.5 ~.5 ~.5 run item modify entity @n[type=item,nbt={Item:{id:"minecraft:spruce_planks"}},distance=...5] contents esb:count_-1
execute positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.-x]
execute positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,tag=block,tag=side.-z]
execute positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.x]
execute positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,tag=block,tag=side.y]
execute positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,tag=block,tag=side.z]
kill @s