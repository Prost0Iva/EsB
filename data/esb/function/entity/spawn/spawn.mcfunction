execute as @e[type=marker,tag=summon,tag=iceologer] at @s run function esb:entity/iceologer/summon
execute as @e[type=marker,tag=summon,tag=taiga_spirit] at @s run function esb:entity/taiga_spirit/summon
execute as @e[type=marker,tag=summon] run kill
execute as @e[type=skeleton,tag=!check,tag=!brain] run function esb:entity/spawn/skeleton
execute as @e[type=fox,tag=!check,tag=!brain] run function esb:entity/spawn/fox
execute as @e[type=evoker,tag=!check,tag=!brain] run function esb:entity/spawn/evoker