execute anchored eyes positioned ^ ^ ^1 if entity @e[type=vex,tag=bonebeak,distance=..1] run tag @n[type=vex,tag=bonebeak,distance=..1] add transform
execute anchored eyes positioned ^ ^ ^1 if entity @e[type=vex,tag=bonebeak,distance=..1] if items entity @s weapon.mainhand potion[custom_data={ominous_ice_bottle:1b}] unless items entity @s weapon.offhand potion[custom_data={ominous_ice_bottle:1b}] run item modify entity @s weapon.mainhand esb:count_-1
execute anchored eyes positioned ^ ^ ^1 if entity @e[type=vex,tag=bonebeak,distance=..1] unless items entity @s weapon.mainhand potion[custom_data={ominous_ice_bottle:1b}] if items entity @s weapon.offhand potion[custom_data={ominous_ice_bottle:1b}] run item modify entity @s weapon.offhand esb:count_-1
execute anchored eyes positioned ^ ^ ^1 if entity @e[type=vex,tag=bonebeak,distance=..1] if items entity @s weapon.mainhand potion[custom_data={ominous_ice_bottle:1b}] if items entity @s weapon.offhand potion[custom_data={ominous_ice_bottle:1b}] run item modify entity @s weapon.mainhand esb:count_-1
advancement revoke @s only esb:use_item/ominous_ice_bottle