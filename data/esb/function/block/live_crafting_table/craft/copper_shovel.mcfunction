execute unless items block ~ ~ ~ container.15 jigsaw[custom_data={craft_result:1b}] if entity @a[distance=..10,predicate=esb:craft_result] run function esb:block/live_crafting_table/result/copper_shovel
execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with jigsaw[custom_data={craft_result:1b},item_name='{"translate":"esb:copper_shovel"}',rarity="common",item_model="esb:copper_shovel",lore=['{"text": ""}','{"translate": "item.modifiers.mainhand","color": "gray","italic": false}','[{"text": " 4 ","color": "dark_green","italic": false},{"translate": "attribute.name.attack_damage","color": "dark_green","italic": false}]','[{"text": " 0.8 ","color": "dark_green","italic": false},{"translate": "attribute.name.attack_speed","color": "dark_green","italic": false}]']] 1