scoreboard players add #total_id esb.body_id 1
summon vex ~ ~ ~ {Tags:[brain,bonebeak],DeathLootTable:"esb:entity/bonebeak",CustomName:'{"translate": "esb:bonebeak"}',HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],attributes:[{id:"max_health",base:8}],active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],Silent:1b,Health:8}
summon minecraft:item_display ~ ~ ~ {Tags:[body,bonebeak],item:{id:"potion",components:{item_model:"esb:entity/bonebeak/default"}},teleport_duration:2}
scoreboard players operation @n[type=vex,tag=bonebeak] esb.body_id = #total_id esb.body_id
scoreboard players operation @n[type=item_display,tag=bonebeak] esb.body_id = #total_id esb.body_id