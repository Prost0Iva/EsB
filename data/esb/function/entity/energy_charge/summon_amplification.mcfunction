data modify storage esb:esb energy_charge.Rotation set from entity @s Rotation
function esb:entity/energy_charge/summon with storage esb:esb energy_charge
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result score @s esb.rotation_1 run data get entity @s Rotation[1] 100
execute store result storage esb:esb energy_charge.Rotation[0] float .01 run scoreboard players operation @s esb.rotation += #1000 esb.main
execute store result storage esb:esb energy_charge.Rotation[1] float .01 run scoreboard players operation @s esb.rotation_1 += #1000 esb.main
function esb:entity/energy_charge/summon with storage esb:esb energy_charge
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result score @s esb.rotation_1 run data get entity @s Rotation[1] 100
execute store result storage esb:esb energy_charge.Rotation[0] float .01 run scoreboard players operation @s esb.rotation += #1000 esb.main
execute store result storage esb:esb energy_charge.Rotation[1] float .01 run scoreboard players operation @s esb.rotation_1 -= #1000 esb.main
function esb:entity/energy_charge/summon with storage esb:esb energy_charge
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result score @s esb.rotation_1 run data get entity @s Rotation[1] 100
execute store result storage esb:esb energy_charge.Rotation[0] float .01 run scoreboard players operation @s esb.rotation -= #1000 esb.main
execute store result storage esb:esb energy_charge.Rotation[1] float .01 run scoreboard players operation @s esb.rotation_1 += #1000 esb.main
function esb:entity/energy_charge/summon with storage esb:esb energy_charge
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result score @s esb.rotation_1 run data get entity @s Rotation[1] 100
execute store result storage esb:esb energy_charge.Rotation[0] float .01 run scoreboard players operation @s esb.rotation -= #1000 esb.main
execute store result storage esb:esb energy_charge.Rotation[1] float .01 run scoreboard players operation @s esb.rotation_1 -= #1000 esb.main
function esb:entity/energy_charge/summon with storage esb:esb energy_charge