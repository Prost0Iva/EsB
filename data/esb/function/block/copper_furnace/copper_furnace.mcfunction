execute as @e[tag=copper_furnace,type=glow_item_frame] at @s align xyz run function esb:block/copper_furnace/place
execute as @e[tag=copper_furnace,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ furnace run function esb:block/copper_furnace/destroy
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"charged_copper_ingot":1b}}}}] at @s if block ~ ~-1 ~ blast_furnace positioned ~ ~-1 ~ align xyz run function esb:block/copper_furnace/transform
execute as @e[tag=copper_furnace,type=item_display] at @s align xyz positioned ~.5 ~1 ~.5 run function esb:block/copper_furnace/lit
execute as @e[tag=copper_furnace,type=item_display] at @s align xyz positioned ~.5 ~1 ~.5 run function esb:block/copper_furnace/craft