execute store result score @s esb.item run random value 1..4
execute if score @s esb.item matches 1 anchored eyes run function esb:entity/icicle/summon with entity @s
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^ ^1 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^ ^-1 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^1 ^ ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^-1 ^ ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^.5 ^.5 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^-.5 ^.5 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^.5 ^-.5 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 anchored eyes run particle snowflake ^-.5 ^-.5 ^1 0 0 0 0 1
execute if score @s esb.item matches 1 run playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 .6