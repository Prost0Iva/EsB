data modify storage esb:esb icicle.Rotation set from entity @s Rotation
function esb:entity/icicle/summon with storage esb:esb icicle
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result storage esb:esb icicle.Rotation[0] float .01 run scoreboard players operation @s esb.rotation += #1500 esb.main
function esb:entity/icicle/summon with storage esb:esb icicle
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result storage esb:esb icicle.Rotation[0] float .01 run scoreboard players operation @s esb.rotation -= #1500 esb.main
function esb:entity/icicle/summon with storage esb:esb icicle
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result storage esb:esb icicle.Rotation[0] float .01 run scoreboard players operation @s esb.rotation += #3000 esb.main
function esb:entity/icicle/summon with storage esb:esb icicle
execute store result score @s esb.rotation run data get entity @s Rotation[0] 100
execute store result storage esb:esb icicle.Rotation[0] float .01 run scoreboard players operation @s esb.rotation -= #3000 esb.main
function esb:entity/icicle/summon with storage esb:esb icicle