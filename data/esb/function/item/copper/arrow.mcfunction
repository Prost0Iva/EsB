execute unless score @s esb.arrow_damage_modifier matches 1 store result score @s esb.arrow_damage run data get entity @s damage 100
execute unless score @s esb.arrow_damage_modifier matches 1 if predicate esb:weather_clear store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 10
execute unless score @s esb.arrow_damage_modifier matches 1 if predicate esb:weather_rain store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 20
execute unless score @s esb.arrow_damage_modifier matches 1 if predicate esb:weather_thunder store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 30
execute unless score @s esb.arrow_damage_modifier matches 1 run scoreboard players add @s esb.arrow_damage_modifier 1
execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force