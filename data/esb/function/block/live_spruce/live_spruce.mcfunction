#log
execute as @e[tag=live_spruce_log,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/log/place
execute as @e[tag=live_spruce_log,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ spruce_log unless block ~ ~ ~ stripped_spruce_log run function esb:block/live_spruce/log/destroy
execute as @e[tag=live_spruce_log,type=item_display] at @s align xyz positioned ~ ~1 ~ if block ~ ~ ~ stripped_spruce_log run function esb:block/live_spruce/log/transform
#stripped
execute as @e[tag=stripped_live_spruce_log,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/stripped/place
execute as @e[tag=stripped_live_spruce_log,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ stripped_spruce_log run function esb:block/live_spruce/stripped/destroy
#planks
execute as @e[tag=live_spruce_planks,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/planks/place
execute as @e[tag=live_spruce_planks,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ spruce_planks run function esb:block/live_spruce/planks/destroy
#pressure plate
execute as @e[tag=live_spruce_pressure_plate,type=glow_item_frame] at @s if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/pressure_plate/place
execute as @e[tag=live_spruce_pressure_plate,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/pressure_plate/destroy
execute as @e[tag=live_spruce_pressure_plate,type=item_display] at @s if block ~ ~ ~ spruce_pressure_plate[powered=false] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/pressure_plate"
execute as @e[tag=live_spruce_pressure_plate,type=item_display] at @s if block ~ ~ ~ spruce_pressure_plate[powered=true] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/pressure_plate_powered"
execute as @e[tag=live_spruce_pressure_plate,type=item_display] at @s unless block ~ ~ ~ spruce_pressure_plate run function esb:block/live_spruce/pressure_plate/destroy
#stairs
execute as @e[tag=live_spruce_stairs,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/stairs/place
execute as @e[tag=live_spruce_stairs,type=item_display] at @s unless block ~ ~ ~ spruce_stairs run function esb:block/live_spruce/stairs/destroy
execute as @e[tag=live_spruce_stairs,type=item_display] at @s run function esb:block/live_spruce/stairs/type
#fence
execute as @e[tag=live_spruce_fence,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/fence/place
execute as @e[tag=live_spruce_fence,type=item_display] at @s unless block ~ ~ ~ spruce_fence run function esb:block/live_spruce/fence/destroy
execute as @e[tag=live_spruce_fence,type=item_display] at @s run function esb:block/live_spruce/fence/type
#slab
execute as @e[tag=live_spruce_slab,type=glow_item_frame] at @s if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/slab/place
execute as @e[tag=live_spruce_slab,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/slab/destroy
execute as @e[tag=live_spruce_slab,tag=top,type=item_display] at @s unless block ~ ~ ~ spruce_slab run function esb:block/live_spruce/slab/destroy
execute as @e[tag=live_spruce_slab,tag=bottom,type=item_display] at @s unless block ~ ~ ~ spruce_slab run function esb:block/live_spruce/slab/destroy
execute as @e[tag=live_spruce_slab,tag=double,type=item_display] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ spruce_planks run function esb:block/live_spruce/slab/destroy_double
#button
execute as @e[tag=live_spruce_button,type=glow_item_frame] at @s if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/button/place
execute as @e[tag=live_spruce_button,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/button/destroy
execute as @e[tag=live_spruce_button,type=item_display] at @s unless block ~ ~ ~ spruce_button run function esb:block/live_spruce/button/destroy
execute as @e[tag=live_spruce_button,type=item_display] at @s run function esb:block/live_spruce/button/type
#gate
execute as @e[tag=live_spruce_fence_gate,type=glow_item_frame] at @s if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/fence_gate/place
execute as @e[tag=live_spruce_fence_gate,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/fence_gate/destroy
execute as @e[tag=live_spruce_fence_gate,type=item_display] at @s unless block ~ ~ ~ spruce_fence_gate run function esb:block/live_spruce/fence_gate/destroy
execute as @e[tag=live_spruce_fence_gate,type=item_display] at @s run function esb:block/live_spruce/fence_gate/type
#door
execute as @e[tag=live_spruce_door,type=glow_item_frame] at @s if block ~ ~1 ~ #air align xyz run function esb:block/live_spruce/door/place
execute as @e[tag=live_spruce_door,type=glow_item_frame] at @s unless block ~ ~1 ~ #air align xyz run function esb:block/live_spruce/door/destroy
execute as @e[tag=live_spruce_door,type=item_display] at @s unless block ~ ~ ~ spruce_door run function esb:block/live_spruce/door/destroy
execute as @e[tag=live_spruce_door,type=item_display] at @s run function esb:block/live_spruce/door/type
#trapdoor
execute as @e[tag=live_spruce_trapdoor,type=glow_item_frame] at @s if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/trapdoor/place
execute as @e[tag=live_spruce_trapdoor,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/trapdoor/destroy
execute as @e[tag=live_spruce_trapdoor,type=item_display] at @s unless block ~ ~ ~ spruce_trapdoor run function esb:block/live_spruce/trapdoor/destroy
execute as @e[tag=live_spruce_trapdoor,type=item_display] at @s run function esb:block/live_spruce/trapdoor/type
#leaves
execute as @e[tag=live_spruce_leaves,type=glow_item_frame] at @s align xyz run function esb:block/live_spruce/leaves/place
execute as @e[tag=live_spruce_leaves,type=item_display] at @s unless block ~ ~ ~ spruce_leaves run function esb:block/live_spruce/leaves/destroy
#sapling
execute as @e[tag=live_spruce_sapling,type=glow_item_frame] at @s if block ~ ~-1 ~ #dirt if block ~ ~ ~ #air align xyz run function esb:block/live_spruce/sapling/place
execute as @e[tag=live_spruce_sapling,type=glow_item_frame] at @s unless block ~ ~-1 ~ #dirt run function esb:block/live_spruce/sapling/destroy
execute as @e[tag=live_spruce_sapling,type=glow_item_frame] at @s unless block ~ ~ ~ #air run function esb:block/live_spruce/sapling/destroy
execute as @e[tag=live_spruce_sapling,type=interaction] at @s unless block ~ ~-1 ~ #dirt run function esb:block/live_spruce/sapling/destroy
execute as @e[tag=live_spruce_sapling,type=interaction] at @s on attacker run function esb:block/live_spruce/sapling/destroy
execute as @e[tag=live_spruce_sapling,type=interaction] at @s run function esb:block/live_spruce/sapling/grow
execute as @e[tag=live_spruce_sapling,type=interaction] at @s on target run function esb:block/live_spruce/sapling/bone_meal