execute at @s if entity @s[tag=!check] if biome ~ ~ ~ snowy_plains run function esb:entity/bonebeak/summon
execute at @s if entity @s[tag=!check] if biome ~ ~ ~ snowy_plains run tag @s add spawn_entity
execute at @s if entity @s[tag=spawn_entity] run tp ~ ~-1000 ~
execute at @s if entity @s[tag=spawn_entity] run kill
tag @s add check