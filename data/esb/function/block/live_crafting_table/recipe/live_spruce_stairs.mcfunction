execute if items block ~ ~ ~ container.1 glow_item_frame[custom_data={live_spruce_planks:1b}] unless items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.3 * if items block ~ ~ ~ container.10 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.11 glow_item_frame[custom_data={live_spruce_planks:1b}] unless items block ~ ~ ~ container.12 * if items block ~ ~ ~ container.19 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.20 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.21 glow_item_frame[custom_data={live_spruce_planks:1b}] run function esb:block/live_crafting_table/craft/live_spruce_stairs
execute unless items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.2 * if items block ~ ~ ~ container.3 glow_item_frame[custom_data={live_spruce_planks:1b}] unless items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.11 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.12 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.19 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.20 glow_item_frame[custom_data={live_spruce_planks:1b}] if items block ~ ~ ~ container.21 glow_item_frame[custom_data={live_spruce_planks:1b}] run function esb:block/live_crafting_table/craft/live_spruce_stairs