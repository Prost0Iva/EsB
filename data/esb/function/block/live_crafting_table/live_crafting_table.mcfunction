execute as @e[tag=live_crafting_table,type=glow_item_frame] at @s align xyz run function esb:block/live_crafting_table/place
execute as @e[tag=live_crafting_table,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ barrel run function esb:block/live_crafting_table/destroy
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"live_spruce_log":1b}}}}] at @s if block ~ ~-1 ~ crafting_table positioned ~ ~-1 ~ align xyz run function esb:block/live_crafting_table/transform
execute as @e[tag=live_crafting_table,type=item_display] at @s align xyz positioned ~.5 ~1 ~.5 run function esb:block/live_crafting_table/craft