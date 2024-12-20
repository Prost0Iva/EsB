scoreboard players add @s esb.attack_animation 1
execute if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=iceologer,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/iceologer/attack"
execute if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=iceologer,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #45 esb.main
execute if score @s esb.attack_animation matches 1 run attribute @s movement_speed base set 0.0
execute if score @s esb.attack_animation matches 15 positioned ^ ^2.5 ^1.4 run function esb:entity/ice_chunk/summon
execute if score @s esb.attack_animation matches 30 run tp @n[type=armor_stand,tag=ice_chunk] ~ ~7 ~
execute if score @s esb.attack_animation matches 30 on target run data modify entity @n[type=armor_stand,tag=ice_chunk] Pos[0] set from entity @s Pos[0]
execute if score @s esb.attack_animation matches 30 on target run data modify entity @n[type=armor_stand,tag=ice_chunk] Pos[2] set from entity @s Pos[2]
execute if score @s esb.attack_animation matches 44 run attribute @s movement_speed base set 0.35
execute if score @s esb.attack_animation matches 44 store result score @s esb.attack_cooldown run random value 40..150
execute if score @s esb.attack_animation matches 44 run tag @s remove attack
execute if score @s esb.attack_animation matches 44 run scoreboard players reset @s esb.attack_animation