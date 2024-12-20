execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #is_taiga store result score @s esb.spawn run random value 1..3
execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #is_taiga if score @s esb.spawn matches 1 run function esb:entity/sapling_of_taiga_spirit/summon
execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #is_taiga if score @s esb.spawn matches 1 run tag @s add spawn_entity
execute at @s if entity @s[tag=spawn_entity] run tp ~ ~-1000 ~
execute at @s if entity @s[tag=spawn_entity] run kill
tag @s add check