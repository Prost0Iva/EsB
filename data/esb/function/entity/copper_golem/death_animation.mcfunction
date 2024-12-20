scoreboard players add @s esb.death_animation 1
execute if score @s esb.death_animation matches 1 run data modify entity @s item.components."minecraft:item_model" set value "esb:entity/copper_golem/death"
execute if score @s esb.death_animation matches 1 store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players operation #gametime esb.main %= #40 esb.main
execute if score @s esb.death_animation matches 1 at @s run playsound entity.iron_golem.death hostile @a ~ ~ ~ 1 .8
execute if score @s esb.death_animation matches 1 at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
execute if score @s esb.death_animation matches 35 run kill