scoreboard players add @s esb.attack_animation 1
execute if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=taiga_spirit,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/taiga_spirit/attack"
execute if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=taiga_spirit,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #40 esb.main
execute if score @s esb.attack_animation matches 1 run attribute @s movement_speed base set 0.0
execute if score @s esb.attack_animation matches 20 on target run damage @s[distance=..4.5] 12 mob_attack by @n[type=skeleton,tag=taiga_spirit,tag=brain,distance=..0]
execute if score @s esb.attack_animation matches 20 anchored eyes run particle sweep_attack ^ ^-.5 ^2 0 0 0 0 1
execute if score @s esb.attack_animation matches 19 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 19 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 19 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 20 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 20 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 20 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 21 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 21 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 21 anchored eyes summon marker run function esb:entity/spruce_needle/get_vec_taiga_spirit
execute if score @s esb.attack_animation matches 35 run attribute @s movement_speed base set 0.14
execute if score @s esb.attack_animation matches 35 run tag @s remove attack
execute if score @s esb.attack_animation matches 35 run scoreboard players reset @s esb.attack_animation