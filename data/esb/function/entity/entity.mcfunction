function esb:entity/spawn/spawn
execute as @e[type=item_display,tag=body] run function esb:entity/body_id
execute as @e[type=skeleton,tag=taiga_spirit] run function esb:entity/taiga_spirit/taiga_spirit
execute as @e[type=snowball,tag=spruce_needle] run function esb:entity/spruce_needle/spruce_needle
execute as @e[type=skeleton,tag=sapling_of_taiga_spirit] run function esb:entity/sapling_of_taiga_spirit/sapling_of_taiga_spirit
execute as @e[type=vex,tag=bonebeak] run function esb:entity/bonebeak/bonebeak
execute as @e[type=pillager,tag=iceologer] run function esb:entity/iceologer/iceologer
execute as @e[type=armor_stand,tag=ice_chunk] run function esb:entity/ice_chunk/ice_chunk
execute as @e[type=vex,tag=frostybeak] run function esb:entity/frostybeak/frostybeak
execute as @e[type=item_display,tag=icicle] run function esb:entity/icicle/icicle
execute as @e[type=skeleton,tag=copper_golem] run function esb:entity/copper_golem/copper_golem
execute as @e[type=lightning_bolt] at @s run function esb:entity/copper_golem/summon_lightning_bolt
execute as @e[type=item_display,tag=energy_ring] run function esb:entity/energy_ring/energy_ring
execute as @e[type=item_display,tag=energy_charge] run function esb:entity/energy_charge/energy_charge