scoreboard players add @s esb.raycast 1
execute if block ~ ~ ~ copper_block if block ~ ~1 ~ carved_pumpkin if block ~ ~2 ~ lightning_rod run playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute if block ~ ~ ~ copper_block if block ~ ~1 ~ carved_pumpkin if block ~ ~2 ~ lightning_rod run particle electric_spark ~ ~1 ~ .8 .8 .8 .05 80
execute if block ~ ~ ~ copper_block if block ~ ~1 ~ carved_pumpkin if block ~ ~2 ~ lightning_rod positioned ~ ~1 ~ run function esb:entity/copper_golem/summon
execute if block ~ ~ ~ copper_block if block ~ ~1 ~ carved_pumpkin if block ~ ~2 ~ lightning_rod run clear @s command_block[custom_data={copper_heart:1b}] 1
execute if block ~ ~ ~ copper_block if block ~ ~1 ~ carved_pumpkin if block ~ ~2 ~ lightning_rod run fill ~ ~ ~ ~ ~2 ~ air
execute if block ~ ~-1 ~ copper_block if block ~ ~ ~ carved_pumpkin if block ~ ~1 ~ lightning_rod run playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute if block ~ ~-1 ~ copper_block if block ~ ~ ~ carved_pumpkin if block ~ ~1 ~ lightning_rod run particle electric_spark ~ ~ ~ .8 .8 .8 .05 80
execute if block ~ ~-1 ~ copper_block if block ~ ~ ~ carved_pumpkin if block ~ ~1 ~ lightning_rod run function esb:entity/copper_golem/summon
execute if block ~ ~-1 ~ copper_block if block ~ ~ ~ carved_pumpkin if block ~ ~1 ~ lightning_rod run clear @s command_block[custom_data={copper_heart:1b}] 1
execute if block ~ ~-1 ~ copper_block if block ~ ~ ~ carved_pumpkin if block ~ ~1 ~ lightning_rod run fill ~ ~-1 ~ ~ ~1 ~ air
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run particle electric_spark ~ ~-1 ~ .8 .8 .8 .05 80
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod positioned ~ ~-1 ~ run function esb:entity/copper_golem/summon
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run clear @s command_block[custom_data={copper_heart:1b}] 1
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run fill ~ ~-2 ~ ~ ~ ~ air
execute if block ~ ~ ~ #air unless score @s esb.raycast matches 12 positioned ^ ^ ^.5 run function esb:item/copper_heart/copper_heart