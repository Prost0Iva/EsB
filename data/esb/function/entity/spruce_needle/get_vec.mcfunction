data modify entity @s Item set value {id:"stick",components:{item_model:"esb:spruce_needle"}}
execute store result score #x esb.pos_xyz run data get entity @s Pos[0] 1000
execute store result score #y esb.pos_xyz run data get entity @s Pos[1] 1000
execute store result score #z esb.pos_xyz run data get entity @s Pos[2] 1000
execute store result score #x_deviation esb.pos_xyz run random value -15..15
execute store result score #y_deviation esb.pos_xyz run random value -15..15
execute store result score #z_deviation esb.pos_xyz run random value -15..15
tp @s ^ ^ ^.1
execute store result score #x_1 esb.pos_xyz run data get entity @s Pos[0] 1000
execute store result score #y_1 esb.pos_xyz run data get entity @s Pos[1] 1000
execute store result score #z_1 esb.pos_xyz run data get entity @s Pos[2] 1000
scoreboard players operation #x_1 esb.pos_xyz -= #x esb.pos_xyz
scoreboard players operation #y_1 esb.pos_xyz -= #y esb.pos_xyz
scoreboard players operation #z_1 esb.pos_xyz -= #z esb.pos_xyz
execute store result storage esb:esb spruce_needle.x double .008 run scoreboard players operation #x_1 esb.pos_xyz += #x_deviation esb.pos_xyz
execute store result storage esb:esb spruce_needle.y double .004 run scoreboard players operation #y_1 esb.pos_xyz += #y_deviation esb.pos_xyz
execute store result storage esb:esb spruce_needle.z double .008 run scoreboard players operation #z_1 esb.pos_xyz += #z_deviation esb.pos_xyz
function esb:entity/spruce_needle/summon with storage esb:esb spruce_needle
kill @s