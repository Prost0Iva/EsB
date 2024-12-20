execute as @a run function esb:item/magic_potential
execute as @a[tag=grimoire_user] run function esb:item/grimoire/ice_chunk
execute as @a[predicate=esb:item/ice_diver] at @s run function esb:item/ice_diver/ice_diver
execute as @a[predicate=esb:item/frosty_shield] at @s if score @s esb.shield_hit matches 1 run function esb:item/frosty_shield/use
function esb:item/frozen_catcher/frozen_catcher
function esb:item/copper/copper
function esb:item/golem_fist/golem_fist
#used:score
scoreboard players reset @a[scores={esb.shield_hit=1..}] esb.shield_hit
scoreboard players reset @a[scores={esb.fishing_rod_use=1..}] esb.fishing_rod_use
scoreboard players reset @a[scores={esb.bow_use=1..}] esb.bow_use