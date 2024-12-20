scoreboard players operation #id esb.body_id = @s esb.body_id
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=!attack] run data modify entity @n[type=item_display,tag=iceologer,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/iceologer/default"
execute if entity @s[nbt=!{Motion:[0.0,0.0,0.0]},tag=!attack] run data modify entity @n[type=item_display,tag=iceologer,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/iceologer/walk"
execute if score @s esb.attack_cooldown matches 1.. run scoreboard players remove @s esb.attack_cooldown 1
execute at @s unless score @s esb.attack_cooldown matches 1.. on target if entity @s[distance=..15] run tag @n[type=pillager,tag=iceologer,tag=brain,distance=..0] add attack
execute at @s if entity @s[tag=attack] unless score @s esb.attack_cooldown matches 1.. run function esb:entity/iceologer/attack