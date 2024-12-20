$bossbar add $(bossbar) {"translate":"esb:bossbar/copper_golem","font": "esb:bossbar","shadow_color": 0}
$bossbar set $(bossbar) color blue
$execute if predicate esb:weather_clear run bossbar set $(bossbar) max 190
$execute if predicate esb:weather_rain run bossbar set $(bossbar) max 210
$execute if predicate esb:weather_thunder run bossbar set $(bossbar) max 250
$bossbar set $(bossbar) visible true