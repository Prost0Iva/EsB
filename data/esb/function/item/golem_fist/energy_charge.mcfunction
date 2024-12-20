scoreboard players add @s esb.item 1
execute if score @s esb.item matches 1 if items entity @s weapon.mainhand chain_command_block[custom_data={golem_fist:1b}] unless items entity @s weapon.offhand chain_command_block[custom_data={golem_fist:1b}] run item modify entity @s weapon.mainhand [{"function": "minecraft:set_damage","damage": -0.0015,"add": true}]
execute if score @s esb.item matches 1 unless items entity @s weapon.mainhand chain_command_block[custom_data={golem_fist:1b}] if items entity @s weapon.offhand chain_command_block[custom_data={golem_fist:1b}] run item modify entity @s weapon.offhand [{"function": "minecraft:set_damage","damage": -0.0015,"add": true}]
execute if score @s esb.item matches 1 if items entity @s weapon.mainhand chain_command_block[custom_data={golem_fist:1b}] if items entity @s weapon.offhand chain_command_block[custom_data={golem_fist:1b}] run item modify entity @s weapon.mainhand [{"function": "minecraft:set_damage","damage": -0.0015,"add": true}]
execute if score @s esb.item matches 1 at @s run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s esb.item matches 1 if predicate esb:weather_rain run scoreboard players remove @s esb.magic_potential 120
execute if score @s esb.item matches 1 if predicate esb:weather_thunder run scoreboard players remove @s esb.magic_potential 90
execute if score @s esb.item matches 1 at @s anchored eyes run function esb:entity/energy_charge/summon with entity @s
execute if score @s esb.item matches 1 run clear @s chain_command_block[custom_data={golem_fist:1b},damage=695]
execute if score @s esb.item matches 30 run tag @s remove golem_fist_user
execute if score @s esb.item matches 30.. run scoreboard players reset @s esb.item