execute store result storage esb:esb bossbar int 1 run scoreboard players operation #id esb.body_id = @s esb.body_id
execute unless entity @e[tag=brain,predicate=esb:body_id] run function esb:entity/bossbar_remove with storage esb:esb
execute if entity @s[tag=taiga_spirit] at @e[type=skeleton,tag=brain,predicate=esb:body_id] run tp @s ~ ~1.3 ~ ~ 0
execute if entity @s[tag=taiga_spirit] unless entity @e[type=skeleton,tag=brain,predicate=esb:body_id] run function esb:entity/taiga_spirit/death_animation
execute if entity @s[tag=sapling_of_taiga_spirit] at @e[type=skeleton,tag=brain,predicate=esb:body_id] run tp @s ~ ~1 ~ ~ 0
execute if entity @s[tag=sapling_of_taiga_spirit] unless entity @e[type=skeleton,tag=brain,predicate=esb:body_id] run function esb:entity/sapling_of_taiga_spirit/death_animation
execute if entity @s[tag=bonebeak] at @e[type=vex,tag=brain,predicate=esb:body_id] run tp @s ~ ~.5 ~ ~ 0
execute if entity @s[tag=bonebeak] unless entity @e[type=vex,tag=brain,predicate=esb:body_id] run function esb:entity/bonebeak/death_animation
execute if entity @s[tag=iceologer] at @e[type=pillager,tag=brain,predicate=esb:body_id] run tp @s ~ ~.5 ~ ~ 0
execute if entity @s[tag=iceologer] unless entity @e[type=pillager,tag=brain,predicate=esb:body_id] run function esb:entity/iceologer/death_animation
execute if entity @s[tag=frostybeak] at @e[type=vex,tag=brain,predicate=esb:body_id] run tp @s ~ ~2 ~ ~ 0
execute if entity @s[tag=frostybeak] unless entity @e[type=vex,tag=brain,predicate=esb:body_id] run function esb:entity/frostybeak/death_animation
execute if entity @s[tag=copper_golem] at @e[type=skeleton,tag=brain,predicate=esb:body_id] run tp @s ~ ~.5 ~ ~ 0
execute if entity @s[tag=copper_golem] unless entity @e[type=skeleton,tag=brain,predicate=esb:body_id] run function esb:entity/copper_golem/death_animation