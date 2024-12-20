scoreboard players operation #id esb.body_id = @s esb.body_id
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=!attack] run data modify entity @n[type=item_display,tag=taiga_spirit,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/taiga_spirit/default"
execute if entity @s[nbt=!{Motion:[0.0,0.0,0.0]},tag=!attack] run data modify entity @n[type=item_display,tag=taiga_spirit,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/taiga_spirit/walk"
execute at @s on target if entity @s[distance=..3.5] run tag @n[type=skeleton,tag=taiga_spirit,tag=brain,distance=..0] add attack
execute at @s if entity @s[tag=attack] run function esb:entity/taiga_spirit/attack
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:block.chorus_flower.death hostile @a ~ ~ ~ 1 1.4
execute if score @s esb.mob_sound matches 0 at @s run playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 .3
execute unless score @s esb.mob_sound matches 1.. store result score @s esb.mob_sound run random value 20..200
execute if score @s esb.mob_sound matches 1.. run scoreboard players remove @s esb.mob_sound 1