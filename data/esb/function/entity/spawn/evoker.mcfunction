execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #has_structure/village_snowy store result score @s esb.spawn run random value 1..5
execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #has_structure/village_snowy if score @s esb.spawn matches 1 run function esb:entity/iceologer/summon
execute at @s if entity @s[tag=!check] if biome ~ ~ ~ #has_structure/village_snowy if score @s esb.spawn matches 1 run tag @s add spawn_entity
execute at @s if entity @s[tag=spawn_entity] run tp ~ ~-1000 ~
execute at @s if entity @s[tag=spawn_entity] run kill
tag @s add check