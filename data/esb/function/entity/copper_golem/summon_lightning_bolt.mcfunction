execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run particle electric_spark ~ ~-1 ~ .8 .8 .8 .05 80
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod positioned ~ ~-1 ~ run function esb:entity/copper_golem/summon
execute if block ~ ~-2 ~ copper_block if block ~ ~-1 ~ carved_pumpkin if block ~ ~ ~ lightning_rod run fill ~ ~-2 ~ ~ ~ ~ air

execute if block ~ ~-3 ~ copper_block if block ~ ~-2 ~ carved_pumpkin if block ~ ~-1 ~ lightning_rod run playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute if block ~ ~-3 ~ copper_block if block ~ ~-2 ~ carved_pumpkin if block ~ ~-1 ~ lightning_rod run particle electric_spark ~ ~-2 ~ .8 .8 .8 .05 80
execute if block ~ ~-3 ~ copper_block if block ~ ~-2 ~ carved_pumpkin if block ~ ~-1 ~ lightning_rod positioned ~ ~-2 ~ run function esb:entity/copper_golem/summon
execute if block ~ ~-3 ~ copper_block if block ~ ~-2 ~ carved_pumpkin if block ~ ~-1 ~ lightning_rod run fill ~ ~-3 ~ ~ ~-1 ~ air