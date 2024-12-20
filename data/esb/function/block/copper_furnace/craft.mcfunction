execute if predicate esb:weather_rain run particle electric_spark ~ ~.5 ~ .3 .3 .3 .05 2
execute if predicate esb:weather_thunder run particle electric_spark ~ ~.5 ~ .3 .3 .3 .05 5
execute if predicate esb:weather_thunder run particle dust{color:[0,1,1],scale:1} ~ ~.5 ~ .3 .3 .3 .05 1
execute if predicate esb:weather_rain if block ~ ~ ~ furnace{cooking_time_spent:0s} run data modify block ~ ~ ~ cooking_time_spent set value 50s
execute if predicate esb:weather_thunder if block ~ ~ ~ furnace{cooking_time_spent:0s} run data modify block ~ ~ ~ cooking_time_spent set value 125s
execute if predicate esb:weather_thunder run data modify block ~ ~ ~ lit_time_remaining set value 200s