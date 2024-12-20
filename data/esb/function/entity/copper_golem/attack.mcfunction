scoreboard players add @s esb.attack_animation 1
execute on target if entity @s[distance=..4] as @e[type=skeleton,tag=copper_golem,tag=!amplification,tag=!thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 1..5
execute on target if entity @s[distance=4.1..] as @e[type=skeleton,tag=copper_golem,tag=!amplification,tag=!thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 4..6
execute on target if entity @s[distance=..6] as @e[type=skeleton,tag=copper_golem,tag=amplification,tag=!thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 1..8
execute on target if entity @s[distance=6.1..] as @e[type=skeleton,tag=copper_golem,tag=amplification,tag=!thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 4..10
#thunder
execute on target if entity @s[distance=..4] as @e[type=skeleton,tag=copper_golem,tag=!amplification,tag=thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 4..6
execute on target if entity @s[distance=4.1..] as @e[type=skeleton,tag=copper_golem,tag=!amplification,tag=thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 1..5
execute on target if entity @s[distance=..6] as @e[type=skeleton,tag=copper_golem,tag=amplification,tag=thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 4..10
execute on target if entity @s[distance=6.1..] as @e[type=skeleton,tag=copper_golem,tag=amplification,tag=thunder,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 1..8
#1
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/ground_hit"
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #40 esb.main
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 run attribute @s movement_speed base set 0.15
#thunder
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result score #jump_x esb.pos_xyz run data get entity @s Pos[0] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result score #jump_z esb.pos_xyz run data get entity @s Pos[2] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result score #jump_x_1 esb.pos_xyz on target run data get entity @s Pos[0] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result score #jump_z_1 esb.pos_xyz on target run data get entity @s Pos[2] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result entity @s Motion[0] double .0001 run scoreboard players operation #jump_x_1 esb.pos_xyz -= #jump_x esb.pos_xyz
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 run data modify entity @s Motion[1] set value 0.8d
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result entity @s Motion[2] double .0001 run scoreboard players operation #jump_z_1 esb.pos_xyz -= #jump_z esb.pos_xyz
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 30 if entity @s[tag=!amplification] as @e[type=!#esb:entity,tag=!copper_golem,distance=..4] run damage @s 8 falling_anvil at ~ ~ ~
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 30 if entity @s[tag=amplification] as @e[type=!#esb:entity,tag=!copper_golem,distance=..5] run damage @s 12 falling_anvil at ~ ~ ~
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 30 run particle electric_spark ~ ~ ~ 1.6 0.1 1.6 .01 200
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 30 run playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 1 .6
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 30 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 40 run attribute @s movement_speed base set 0.2
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 40 store result score @s[tag=!amplification] esb.attack_cooldown run random value 40..80
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 40 store result score @s[tag=amplification] esb.attack_cooldown run random value 20..60
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 40 run tag @s remove attack
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 40.. run scoreboard players reset @s esb.attack_animation
#2
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/shot"
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #40 esb.main
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 run attribute @s movement_speed base set 0.15
#thunder
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_x esb.pos_xyz run data get entity @s Pos[0] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_z esb.pos_xyz run data get entity @s Pos[2] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_x_1 esb.pos_xyz positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:[cg_jump]}
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_x_1 esb.pos_xyz positioned ^ ^ ^1 run data get entity @n[type=marker,tag=cg_jump,distance=...5] Pos[0] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_z_1 esb.pos_xyz positioned ^ ^ ^1 run data get entity @n[type=marker,tag=cg_jump,distance=...5] Pos[2] 1000
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result score #jump_x_1 esb.pos_xyz positioned ^ ^ ^1 run kill @n[type=marker,tag=cg_jump,distance=...5]
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result entity @s Motion[0] double .0008 run scoreboard players operation #jump_x esb.pos_xyz -= #jump_x_1 esb.pos_xyz
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 run data modify entity @s Motion[1] set value 0.5d
execute if entity @s[tag=thunder] if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result entity @s Motion[2] double .0008 run scoreboard players operation #jump_z esb.pos_xyz -= #jump_z_1 esb.pos_xyz
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 15..25 anchored eyes run particle electric_spark ^-.5 ^-.4 ^2 .2 .2 .2 .01 2
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 15..25 anchored eyes run particle electric_spark ^-.5 ^-.4 ^1.5 .2 .2 .2 .01 2
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 15..25 anchored eyes run particle electric_spark ^-.5 ^-.4 ^1 .2 .2 .2 .01 2
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.5
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 on target run tp @n[type=skeleton,tag=copper_golem,distance=..0] ~ ~ ~ facing entity @s
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 anchored eyes positioned ^-.5 ^-.4 ^ if entity @s[tag=!amplification] run function esb:entity/energy_charge/summon with entity @s
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 anchored eyes positioned ^-.5 ^-.4 ^ if entity @s[tag=amplification] run function esb:entity/energy_charge/summon_amplification
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 40 run attribute @s movement_speed base set 0.2
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 40 store result score @s[tag=!amplification] esb.attack_cooldown run random value 40..60
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 40 store result score @s[tag=amplification] esb.attack_cooldown run random value 20..50
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 40 run tag @s remove attack
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 40.. run scoreboard players reset @s esb.attack_animation
#3
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/copper_golem/amplification"
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=copper_golem,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #35 esb.main
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 1 run attribute @s movement_speed base set 0.15
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 1..25 run particle electric_spark ~ ~1 ~ .4 .4 .4 .01 10
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 15 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 15 run effect give @s speed 5 1
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 15 run effect give @s resistance 5 20
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 15 positioned ~ ~1.5 ~ run function esb:entity/energy_ring/summon
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 35 run attribute @s movement_speed base set 0.2
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 35 store result score @s esb.attack_cooldown run random value 30..100
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 35 run tag @s remove attack
execute if score @s esb.attack_type matches 7..10 if score @s esb.attack_animation matches 35.. run scoreboard players reset @s esb.attack_animation