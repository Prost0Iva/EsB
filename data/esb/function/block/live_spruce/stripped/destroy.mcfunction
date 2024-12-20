loot spawn ~.5 ~.5 ~.5 loot esb:block/stripped_live_spruce_log
execute positioned ~.5 ~.5 ~.5 run item modify entity @n[type=item,nbt={Item:{id:"minecraft:stripped_spruce_log"}},distance=...5] contents esb:count_-1
execute positioned ~-.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.-x]
execute positioned ~.5 ~.5 ~-.0001 run kill @n[type=item_display,tag=block,tag=side.-z]
execute positioned ~1.0001 ~.5 ~.5 run kill @n[type=item_display,tag=block,tag=side.x]
execute positioned ~.5 ~1.0001 ~.5 run kill @n[type=item_display,tag=block,tag=side.y]
execute positioned ~.5 ~.5 ~1.0001 run kill @n[type=item_display,tag=block,tag=side.z]
kill @s