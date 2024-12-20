loot spawn ~ ~ ~ loot esb:block/live_spruce_leaves
item modify entity @n[type=item,nbt={Item:{id:"minecraft:spruce_sapling"}},distance=...5] contents esb:count_-1
item modify entity @n[type=item,nbt={Item:{id:"minecraft:spruce_leaves"}},distance=...5] contents esb:count_-1
kill @n[type=item,nbt={Item:{id:"minecraft:stick"}},distance=...5]
kill @s