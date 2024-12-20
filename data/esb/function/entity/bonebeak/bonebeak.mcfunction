scoreboard players operation #id esb.body_id = @s esb.body_id
execute if predicate esb:can_see_sky if score #daytime esb.main matches 0..13000 run effect give @s wither 5 1 true
execute if predicate esb:can_see_sky if score #daytime esb.main matches 0..13000 at @s run particle flame ~ ~.5 ~ .2 .2 .2 0.01 1 force
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 1 1.3
execute if score @s esb.mob_sound matches 0 at @s run playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 1 1.4
execute unless score @s esb.mob_sound matches 1.. store result score @s esb.mob_sound run random value 20..200
execute if score @s esb.mob_sound matches 1.. run scoreboard players remove @s esb.mob_sound 1
execute if entity @s[tag=transform] run scoreboard players add @s esb.transform 1
execute if entity @s[tag=transform] at @s run particle snowflake ~ ~.5 ~ .2 .2 .2 .1 3 force
execute if entity @s[tag=transform] if score @s esb.transform matches 300 at @s run playsound entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 0.3
execute if entity @s[tag=transform] if score @s esb.transform matches 300 at @s run function esb:entity/frostybeak/summon
execute if entity @s[tag=transform] if score @s esb.transform matches 300 at @s run advancement grant @a[distance=..48] only esb:lore/frostybeak
execute if entity @s[tag=transform] if score @s esb.transform matches 300 run kill