execute unless items block ~ ~ ~ container.15 jigsaw[custom_data={craft_result:1b}] if entity @a[distance=..10,predicate=esb:craft_result] run function esb:block/live_crafting_table/result/frozen_catcher
execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with jigsaw[custom_data={craft_result:1b},item_name='{"translate": "esb:frozen_catcher"}',rarity="uncommon",item_model="esb:frozen_catcher"] 1