execute store result score @s esb.arrow_damage run data get entity @s damage 100
execute if predicate esb:weather_clear store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 10
execute if predicate esb:weather_rain store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 15
execute if predicate esb:weather_thunder store result entity @s damage double .01 run scoreboard players add @s esb.arrow_damage 20
tag @s remove copper_bow