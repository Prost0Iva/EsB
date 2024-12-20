execute if entity @s[tag=!animation_end] run scoreboard players add @s esb.attack_animation 1
execute if score @s[tag=!animation_end] esb.attack_animation matches 1 store result entity @s ArmorItems[3].components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #12 esb.main
execute if score @s[tag=!animation_end] esb.attack_animation matches 10 run data modify entity @s ArmorItems[3].components."minecraft:potion_contents".custom_color set value -6
execute if score @s[tag=!animation_end] esb.attack_animation matches 20 run tag @s add animation_end
execute if entity @s[tag=animation_end] run data modify entity @s NoGravity set value 0b
execute at @s run particle snowflake ~ ~-.8 ~ .5 .2 .5 .04 2
execute at @s run particle firework ~ ~-.8 ~ .5 .2 .5 .04 2
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run particle block{block_state:{Name:"packed_ice"}} ~ ~.1 ~ 1.2 .1 1.2 .1 200
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run particle block{block_state:{Name:"snow_block"}} ~ ~.1 ~ 1.2 .1 1.2 .1 200
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 0
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 .2
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 .5
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 .6
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air as @e[type=!#esb:entity,distance=..2] run damage @s 9 falling_block by @n[distance=..0,type=armor_stand,tag=ice_chunk]
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air as @e[type=!#esb:entity,distance=2.1..4] run damage @s 4.5 falling_block by @n[distance=..0,type=armor_stand,tag=ice_chunk]
execute at @s if entity @s[tag=animation_end] unless block ~ ~-.1 ~ air run kill @s
scoreboard players add @s esb.projectile_live_time 1
execute if score @s esb.projectile_live_time matches 100 run kill