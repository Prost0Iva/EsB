execute if items entity @s weapon.* bone_meal run particle happy_villager ~ ~.5 ~ .4 .4 .4 .1 15
execute if items entity @s weapon.* bone_meal run scoreboard players add @n[type=interaction,tag=live_spruce_sapling] esb.tree_grow_time 4333
execute if items entity @s weapon.* bone_meal run data remove entity @n[type=interaction ,tag=live_spruce_sapling] interaction
execute if items entity @s weapon.* bone_meal run clear @s bone_meal 1