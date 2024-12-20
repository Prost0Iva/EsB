loot spawn ~ ~ ~ loot esb:block/live_spruce_sapling
particle item{item:{id:"command_block",components:{item_model:"esb:live_spruce_sapling"}}} ~ ~.5 ~ 0 0 0 .08 20
playsound block.grass.break block @a ~ ~ ~ 1 1
kill @n[type=glow_item_frame,tag=live_spruce_sapling,distance=...5]
kill @n[type=item_display,tag=live_spruce_sapling,distance=...5]
kill @n[type=interaction,tag=live_spruce_sapling,distance=...5]