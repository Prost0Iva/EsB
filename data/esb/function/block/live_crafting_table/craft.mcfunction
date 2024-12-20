execute if block ~ ~ ~ barrel[open=false] unless block ~ ~ ~ barrel{Items:[]} run function esb:block/live_crafting_table/clear_item
data remove block ~ ~ ~ Items[{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{craft_result:1b}}}]
data remove block ~ ~ ~ Items[{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{invisible_slot:1b}}}]
execute if block ~ ~ ~ barrel[open=true] run function esb:block/live_crafting_table/recipes_list
execute if block ~ ~ ~ barrel[open=true] run function esb:block/live_crafting_table/fill_invisible_slot
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{craft_result:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{invisible_slot:1b}}}}]
clear @a jigsaw[custom_data={invisible_slot:1b}]