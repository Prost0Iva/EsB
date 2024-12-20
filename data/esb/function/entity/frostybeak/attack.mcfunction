scoreboard players add @s esb.attack_animation 1
execute on target if entity @s[distance=..8] as @e[type=vex,tag=frostybeak,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 1..5
execute on target if entity @s[distance=9..16] as @e[type=vex,tag=frostybeak,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 4..8
execute on target if entity @s[distance=17..] as @e[type=vex,tag=frostybeak,distance=..0] if score @s esb.attack_animation matches 1 store result score @s esb.attack_type run random value 6..9
#1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=frostybeak,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/frostybeak/dash"
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_x esb.pos_xyz run data get entity @s Pos[0] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_y esb.pos_xyz run data get entity @s Pos[1] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_z esb.pos_xyz run data get entity @s Pos[2] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_x_1 esb.pos_xyz on target run data get entity @s Pos[0] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_y_1 esb.pos_xyz on target run data get entity @s Pos[1] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result score #dash_z_1 esb.pos_xyz on target run data get entity @s Pos[2] 1000
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result entity @s Motion[0] double .00005 run scoreboard players operation #dash_x_1 esb.pos_xyz -= #dash_x esb.pos_xyz
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result entity @s Motion[1] double .00005 run scoreboard players operation #dash_y_1 esb.pos_xyz -= #dash_y esb.pos_xyz
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 store result entity @s Motion[2] double .00005 run scoreboard players operation #dash_z_1 esb.pos_xyz -= #dash_z esb.pos_xyz
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^2 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^1.5 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^1 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^.5 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^-.5 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^-1 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^-1.5 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run particle dust{color:[0,1,1],scale:1} ^-2 ^2 ^ 0 0 0 0 1
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 1.4
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 1..20 as @e[type=!#esb:entity,tag=!frostybeak,distance=..3.3] run damage @s 6 minecraft:mob_attack by @n[type=vex,tag=frostybeak]
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 20 store result score @s esb.attack_cooldown run random value 20..40
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 20 run tag @s remove attack
execute if score @s esb.attack_type matches 7..9 if score @s esb.attack_animation matches 20.. run scoreboard players reset @s esb.attack_animation
#2
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result storage esb:esb ice_chunk.x int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result storage esb:esb ice_chunk.y int 1 run random value 1..4
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 store result storage esb:esb ice_chunk.z int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 1 run function esb:entity/ice_chunk/summon_frostybeak with storage esb:esb ice_chunk
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 5 store result storage esb:esb ice_chunk.x int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 5 store result storage esb:esb ice_chunk.y int 1 run random value 1..4
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 5 store result storage esb:esb ice_chunk.z int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 5 run function esb:entity/ice_chunk/summon_frostybeak with storage esb:esb ice_chunk
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 10 store result storage esb:esb ice_chunk.x int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 10 store result storage esb:esb ice_chunk.y int 1 run random value 1..4
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 10 store result storage esb:esb ice_chunk.z int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 10 run function esb:entity/ice_chunk/summon_frostybeak with storage esb:esb ice_chunk
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 15 store result storage esb:esb ice_chunk.x int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 15 store result storage esb:esb ice_chunk.y int 1 run random value 1..4
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 15 store result storage esb:esb ice_chunk.z int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 15 run function esb:entity/ice_chunk/summon_frostybeak with storage esb:esb ice_chunk
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 20 store result storage esb:esb ice_chunk.x int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 20 store result storage esb:esb ice_chunk.y int 1 run random value 1..4
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 20 store result storage esb:esb ice_chunk.z int 1 run random value -8..8
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 20 run function esb:entity/ice_chunk/summon_frostybeak with storage esb:esb ice_chunk
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 21 store result score @s esb.attack_cooldown run random value 40..60
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 21 run tag @s remove attack
execute if score @s esb.attack_type matches 1..3 if score @s esb.attack_animation matches 21.. run scoreboard players reset @s esb.attack_animation
#3
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 run data modify entity @n[type=item_display,tag=frostybeak,predicate=esb:body_id] item.components."minecraft:item_model" set value "esb:entity/frostybeak/attack"
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 1 store result entity @n[type=item_display,tag=frostybeak,predicate=esb:body_id] item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #25 esb.main
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 15 on target run tp @n[type=vex,tag=frostybeak,distance=..0] ~ ~ ~ facing entity @s
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 15 anchored eyes run function esb:entity/icicle/summon_frostybeak
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 store result score @s esb.attack_cooldown run random value 40..60
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25 run tag @s remove attack
execute if score @s esb.attack_type matches 4..6 if score @s esb.attack_animation matches 25.. run scoreboard players reset @s esb.attack_animation