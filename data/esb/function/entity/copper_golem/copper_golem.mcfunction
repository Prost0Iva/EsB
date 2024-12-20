execute store result storage esb:esb bossbar int 1 run scoreboard players operation #id esb.body_id = @s esb.body_id
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=!attack,tag=!amplification] run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/default"
execute if entity @s[nbt=!{Motion:[0.0,0.0,0.0]},tag=!attack,tag=!amplification] run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/walk"
execute store result score @s esb.health run data get entity @s Health
execute at @s if score @s[tag=!amplification] esb.health matches ..90 run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1.5
execute if score @s esb.health matches ..90 run tag @s add amplification
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]},tag=!attack,tag=amplification] run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/amplification_default"
execute if entity @s[nbt=!{Motion:[0.0,0.0,0.0]},tag=!attack,tag=amplification] run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/amplification_walk"
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:block.copper.break hostile @a ~ ~ ~ 1 0
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:block.copper_grate.break hostile @a ~ ~ ~ 1 0
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 1.6
execute if score @s esb.attack_cooldown matches 1.. run scoreboard players remove @s esb.attack_cooldown 1
execute at @s unless score @s esb.attack_cooldown matches 1.. on target run tag @n[type=skeleton,tag=copper_golem,tag=brain,distance=..0] add attack
execute at @s if entity @s[tag=attack] unless score @s esb.attack_cooldown matches 1.. run function esb:entity/copper_golem/attack
execute at @s run function esb:entity/copper_golem/bossbar with storage esb:esb
execute at @s unless entity @a[distance=..48] run tp ~ ~-1000 ~
execute at @s unless entity @a[distance=..48] run kill