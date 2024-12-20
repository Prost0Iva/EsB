execute at @s run tp @s ^ ^ ^.8
execute at @s anchored eyes run particle dust{color:[0,1,1],scale:3} ^ ^ ^-1
execute at @s if score @s esb.projectile_damage_time matches 3 positioned ~ ~-2 ~ run damage @n[type=!#esb:entity,distance=..1.5] 9 lightning_bolt by @s
execute unless score @s esb.projectile_damage_time matches 3 run scoreboard players add @s esb.projectile_damage_time 1
scoreboard players add @s esb.projectile_live_time 1
execute at @s if score @s esb.projectile_live_time matches 35 run summon lightning_bolt
execute if score @s esb.projectile_live_time matches 35 run kill