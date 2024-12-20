execute store result storage esb:esb bossbar int 1 run scoreboard players operation #id esb.body_id = @s esb.body_id
execute if entity @s[tag=!attack] run data modify entity @n[type=item_display,tag=frostybeak,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/frostybeak/default"
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.stray.hurt hostile @a ~ ~ ~ 1 0.6
execute if score @s esb.mob_sound matches 0 at @s run playsound minecraft:entity.stray.ambient hostile @a ~ ~ ~ 1 0.6
execute unless score @s esb.mob_sound matches 1.. store result score @s esb.mob_sound run random value 20..200
execute if score @s esb.mob_sound matches 1.. run scoreboard players remove @s esb.mob_sound 1
execute if score @s esb.attack_cooldown matches 1.. run scoreboard players remove @s esb.attack_cooldown 1
execute at @s unless score @s esb.attack_cooldown matches 1.. on target run tag @n[type=vex,tag=frostybeak,tag=brain,distance=..0] add attack
execute at @s if entity @s[tag=attack] unless score @s esb.attack_cooldown matches 1.. run function esb:entity/frostybeak/attack
execute at @s run function esb:entity/frostybeak/bossbar with storage esb:esb
execute at @s unless entity @a[distance=..48] run tp ~ ~-1000 ~
execute at @s unless entity @a[distance=..48] run kill