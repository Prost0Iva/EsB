scoreboard players operation #id esb.body_id = @s esb.body_id
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]}] run data modify entity @n[type=item_display,tag=sapling_of_taiga_spirit,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/sapling_of_taiga_spirit/default"
execute if entity @s[nbt=!{Motion:[0.0,0.0,0.0]}] run data modify entity @n[type=item_display,tag=sapling_of_taiga_spirit,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/sapling_of_taiga_spirit/walk"
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:block.chorus_flower.death hostile @a ~ ~ ~ 1 1.8
execute if score @s esb.mob_sound matches 0 at @s run playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 1.8
execute unless score @s esb.mob_sound matches 1.. store result score @s esb.mob_sound run random value 20..200
execute if score @s esb.mob_sound matches 1.. run scoreboard players remove @s esb.mob_sound 1