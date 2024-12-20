execute if block ~ ~ ~ spruce_fence_gate[facing=north] run rotate @s 180.0 0.0
execute if block ~ ~ ~ spruce_fence_gate[facing=south] run rotate @s 0.0 0.0
execute if block ~ ~ ~ spruce_fence_gate[facing=west] run rotate @s 90.0 0.0
execute if block ~ ~ ~ spruce_fence_gate[facing=east] run rotate @s 270.0 0.0
execute if block ~ ~ ~ spruce_fence_gate[in_wall=false,open=false] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/fence_gate"
execute if block ~ ~ ~ spruce_fence_gate[in_wall=false,open=true] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/fence_gate_open"
execute if block ~ ~ ~ spruce_fence_gate[in_wall=true,open=false] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/fence_gate_in_wall"
execute if block ~ ~ ~ spruce_fence_gate[in_wall=true,open=true] run data modify entity @s item.components."minecraft:item_model" set value "esb:block/live_spruce/fence_gate_in_wall_open"
