execute if entity @s[tag=!golem_fist_user] if predicate esb:weather_rain if score @s esb.magic_potential matches 120.. run tag @s add golem_fist_user
execute if entity @s[tag=!golem_fist_user] if predicate esb:weather_thunder if score @s esb.magic_potential matches 90.. run tag @s add golem_fist_user
advancement revoke @s only esb:use_item/golem_fist