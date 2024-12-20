execute store result storage esb:esb bossbar int 1 run scoreboard players add #total_id esb.body_id 1
summon vex ~ ~ ~ {PersistenceRequired:1b,Tags:[brain,frostybeak],DeathLootTable:"esb:entity/frostybeak",CustomName:'{"translate": "esb:frostybeak"}',HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],attributes:[{id:"scale",base:4},{id:"max_health",base:230},{id:"attack_damage",base:10},{id:"follow_range",base:1024},{id:"knockback_resistance",base:0.6}],active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],Silent:1b,Health:230}
summon minecraft:item_display ~ ~ ~ {Tags:[body,frostybeak],item:{id:"potion",components:{item_model:"esb:entity/frostybeak/default"}},teleport_duration:2}
scoreboard players operation @n[type=vex,tag=frostybeak] esb.body_id = #total_id esb.body_id
scoreboard players operation @n[type=item_display,tag=frostybeak] esb.body_id = #total_id esb.body_id
function esb:entity/frostybeak/bossbar_add with storage esb:esb