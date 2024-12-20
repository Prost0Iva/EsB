scoreboard players add @s esb.attack_animation 1
execute if score @s esb.attack_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #20 esb.main
execute at @s positioned ~ ~-1 ~ if score @s esb.attack_animation matches 1..5 as @e[type=!#esb:entity,tag=!copper_golem,distance=..2] run damage @s 20 mob_projectile by @n[type=item_display,tag=energy_ring]
execute at @s positioned ~ ~-1 ~ if score @s esb.attack_animation matches 6..10 as @e[type=!#esb:entity,tag=!copper_golem,distance=2.1..2.5] run damage @s 15 mob_projectile by @n[type=item_display,tag=energy_ring]
execute at @s positioned ~ ~-1 ~ if score @s esb.attack_animation matches 11..18 as @e[type=!#esb:entity,tag=!copper_golem,distance=2.6..3.5] run damage @s 10 mob_projectile by @n[type=item_display,tag=energy_ring]
execute if score @s esb.attack_animation matches 18 run kill