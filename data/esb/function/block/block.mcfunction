execute as @a[scores={esb.glow_item_frame_use=1}] store result score @s esb.block_rotation run data get entity @s Rotation[0] 1
function esb:block/live_spruce/live_spruce
function esb:block/live_crafting_table/live_crafting_table
function esb:block/copper_furnace/copper_furnace
scoreboard players set @a[scores={esb.glow_item_frame_use=1..}] esb.glow_item_frame_use 0