scoreboard players add @s esb.tree_grow_time 1
execute if score @s esb.tree_grow_time matches 26000.. run fill ~2 ~1 ~2 ~-2 ~13 ~-2 structure_void keep
execute if score @s esb.tree_grow_time matches 26000.. store result score @s esb.check_empty_area run fill ~2 ~1 ~2 ~-2 ~13 ~-2 air replace structure_void
execute if score @s esb.check_empty_area matches 325 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"esb:live_spruce_tree",posX:-2,posY:-1,posZ:-2,ignoreEntities:0b}
execute if score @s esb.check_empty_area matches 325 run setblock ~ ~1 ~ redstone_block
execute if score @s esb.check_empty_area matches 325 run particle happy_villager ~ ~.5 ~ .4 .4 .4 .1 15
execute if score @s esb.check_empty_area matches 325 run kill @n[type=item_display,tag=live_spruce_sapling]
execute if score @s esb.check_empty_area matches 325 run kill @s