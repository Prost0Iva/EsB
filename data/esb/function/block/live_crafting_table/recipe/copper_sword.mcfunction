execute if items block ~ ~ ~ container.1 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.3 * if items block ~ ~ ~ container.10 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.12 * if items block ~ ~ ~ container.19 stick[!custom_data] unless items block ~ ~ ~ container.20 * unless items block ~ ~ ~ container.21 * run function esb:block/live_crafting_table/craft/copper_sword
execute unless items block ~ ~ ~ container.1 * if items block ~ ~ ~ container.2 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.11 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.12 * unless items block ~ ~ ~ container.19 * if items block ~ ~ ~ container.20 stick[!custom_data] unless items block ~ ~ ~ container.21 * run function esb:block/live_crafting_table/craft/copper_sword
execute unless items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.2 * if items block ~ ~ ~ container.3 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.11 * if items block ~ ~ ~ container.12 command_block[custom_data={charged_copper_ingot:1b}] unless items block ~ ~ ~ container.19 * unless items block ~ ~ ~ container.20 * if items block ~ ~ ~ container.21 stick[!custom_data] run function esb:block/live_crafting_table/craft/copper_sword