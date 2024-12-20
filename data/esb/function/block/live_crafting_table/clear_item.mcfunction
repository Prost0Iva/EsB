execute store result score @s esb.clear_item run data get block ~ ~ ~ Items
execute if score @s esb.clear_item matches 1.. run summon item ~ ~1 ~ {Item:{id:"command_block",count:1,components:{custom_data:{clear_item:1b}}}}
execute if score @s esb.clear_item matches 1.. positioned ~ ~1 ~ run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{clear_item:1b}}}},distance=...5] Item set from block ~ ~-1 ~ Items[0]
execute if score @s esb.clear_item matches 1.. run data remove block ~ ~ ~ Items[0]