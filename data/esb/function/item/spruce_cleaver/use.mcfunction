scoreboard players add @s esb.item 1
execute if score @s esb.item matches 8 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec
execute if score @s esb.item matches 9 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec
execute if score @s esb.item matches 10 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec
execute if score @s esb.item matches 11 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec
execute if score @s esb.item matches 12 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec
execute if score @s esb.item matches 13.. run scoreboard players reset @s esb.item
advancement revoke @s only esb:use_item/spruce_cleaver