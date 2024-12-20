scoreboard players add @s esb.item 1
execute if score @s esb.item matches 1 if items entity @s weapon.mainhand chain_command_block[custom_data={grimoire:1b}] unless items entity @s weapon.offhand chain_command_block[custom_data={grimoire:1b}] run item modify entity @s weapon.mainhand [{"function": "minecraft:set_damage","damage": -0.003,"add": true}]
execute if score @s esb.item matches 1 unless items entity @s weapon.mainhand chain_command_block[custom_data={grimoire:1b}] if items entity @s weapon.offhand chain_command_block[custom_data={grimoire:1b}] run item modify entity @s weapon.offhand [{"function": "minecraft:set_damage","damage": -0.003,"add": true}]
execute if score @s esb.item matches 1 if items entity @s weapon.mainhand chain_command_block[custom_data={grimoire:1b}] if items entity @s weapon.offhand chain_command_block[custom_data={grimoire:1b}] run item modify entity @s weapon.mainhand [{"function": "minecraft:set_damage","damage": -0.003,"add": true}]
execute if score @s esb.item matches 1 at @s run playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
execute if score @s esb.item matches 1 run scoreboard players remove @s esb.magic_potential 85
execute at @s if score @s esb.item matches 1 positioned ^ ^2.5 ^1.4 run function esb:entity/ice_chunk/summon
execute if score @s esb.item matches 1 run clear @s chain_command_block[custom_data={grimoire:1b},damage=368]
execute at @s if score @s esb.item matches 15 run tp @n[type=armor_stand,tag=ice_chunk,tag=!animation_end] ^ ^7 ^8
execute if score @s esb.item matches 15 run tag @s remove grimoire_user
execute if score @s esb.item matches 15.. run scoreboard players reset @s esb.item