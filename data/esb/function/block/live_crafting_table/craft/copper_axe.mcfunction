execute unless items block ~ ~ ~ container.15 jigsaw[custom_data={craft_result:1b}] if entity @a[distance=..10,predicate=esb:craft_result] run function esb:block/live_crafting_table/result/copper_axe
execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with jigsaw[custom_data={craft_result:1b},item_name='{"translate":"esb:copper_axe"}',rarity="common",item_model="esb:copper_axe",lore=['{"text": ""}','{"translate": "item.modifiers.mainhand","color": "gray","italic": false}','[{"text": " 8 ","color": "dark_green","italic": false},{"translate": "attribute.name.attack_damage","color": "dark_green","italic": false}]','[{"text": " 0.8 ","color": "dark_green","italic": false},{"translate": "attribute.name.attack_speed","color": "dark_green","italic": false}]']] 1